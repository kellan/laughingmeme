---
layout: page
title: Search
permalink: /search/
---

<div data-pagefind-ignore>
  <p>
    <input type="search" id="search-q" placeholder="Search posts…" autofocus style="width:100%;padding:.5em;font-size:1.1em;">
  </p>
  <p>
    <label><input type="checkbox" id="search-include-links"> Also search the link blog</label>
  </p>
  <p id="search-status" style="color:#666;"></p>
  <div id="search-results"></div>
</div>

<script type="module">
  const pagefind = await import("/pagefind/pagefind.js");
  await pagefind.options({ excerptLength: 30 });

  const input = document.getElementById("search-q");
  const includeLinks = document.getElementById("search-include-links");
  const status = document.getElementById("search-status");
  const results = document.getElementById("search-results");

  // Restore query from ?q= so the header search box can link here.
  const params = new URLSearchParams(location.search);
  if (params.get("q")) input.value = params.get("q");
  if (params.get("links") === "1") includeLinks.checked = true;

  let token = 0;
  async function run() {
    const term = input.value.trim();
    const my = ++token;
    if (!term) { results.innerHTML = ""; status.textContent = ""; return; }
    status.textContent = "Searching…";
    const types = includeLinks.checked ? ["post", "link"] : ["post"];
    const search = await pagefind.search(term, { filters: { type: { any: types } } });
    if (my !== token) return;
    const data = await Promise.all(search.results.slice(0, 50).map(r => r.data()));
    if (my !== token) return;
    status.textContent = search.results.length
      ? `${search.results.length} result${search.results.length === 1 ? "" : "s"}`
      : "No results.";
    results.innerHTML = data.map(d => `
      <article style="margin:1em 0;">
        <h3 style="margin:0;"><a href="${d.url}">${d.meta.title || d.url}</a></h3>
        <p style="margin:.25em 0;">${d.excerpt}</p>
      </article>
    `).join("");
  }

  input.addEventListener("input", run);
  includeLinks.addEventListener("change", run);
  if (input.value) run();
</script>
