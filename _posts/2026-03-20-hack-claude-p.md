---
title: 'Hack: claude -p'
date: '2026-03-20T07:49:53-04:00'
layout: post
---

`claude -p` is a quick hack that I find myself using more. 

Calling one of the various LLM APIs is easy. But requires key management. For me on a personal project that's no big deal. In a work context it's less trivial. But I'm working in `claude`, which means I have a tool talking to a LLM API running already all the time, that already has not only an API key, but also an allocated budget that is being managed around making me more productive. Much easier if all my LLM based productivity is spend hits a single line item.

E.g. a quick script to classify Github PRs has a section like:


  ```python
  return f"""You are classifying GitHub pull requests for an engineering team.

  PRODUCT AREAS (choose exactly one per PR):
  {area_lines}

  WORK TYPES (choose exactly one per PR):
  {work_type_lines}

  For each PR, return a JSON array with these fields:
  - pr_id, product_area, work_type, confidence, keywords

  Return ONLY the JSON array. No prose, no markdown fences.

  PULL REQUESTS:
  {prs_text}"""
  ```

  And the call itself:

  ```python
  def _call_claude(prompt: str) -> str | None:
      try:
          result = subprocess.run(
              ['claude', '-p', '--output-format', 'text'],
              input=prompt,
              capture_output=True,
              text=True,
              timeout=300,
          )
          return result.stdout.strip() if result.returncode == 0 else None
      except (subprocess.TimeoutExpired, FileNotFoundError):
          return None

  ```
