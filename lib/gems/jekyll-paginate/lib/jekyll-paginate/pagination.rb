module Jekyll
  module Paginate
    class Pagination < Generator
      # This generator is safe from arbitrary code execution.
      safe true

      # This generator should be passive with regard to its execution
      priority :lowest

      # Generate paginated pages if necessary.
      #
      # site - The Site.
      #
      # Returns nothing.
      def generate(site)
        Jekyll.logger.warn "Local pagination gem"
        if Pager.pagination_enabled?(site)
          if template = self.class.template_page(site)
            paginate(site, template)
          else
            Jekyll.logger.warn "Pagination:", "Pagination is enabled, but I couldn't find " +
            "an index.html page to use as the pagination template. Skipping pagination."
          end
        end
      end

      # Paginates the blog's posts. Renders the index.html file into paginated
      # directories, e.g.: page2/index.html, page3/index.html, etc and adds more
      # site-wide data.
      #
      # site - The Site.
      # page - The index.html Page that requires pagination.
      #
      # {"paginator" => { "page" => <Number>,
      #                   "per_page" => <Number>,
      #                   "posts" => [<Post>],
      #                   "total_posts" => <Number>,
      #                   "total_pages" => <Number>,
      #                   "previous_page" => <Number>,
      #                   "next_page" => <Number> }}
      def paginate(site, page)
        all_posts = site.site_payload['site']['posts'].reject { |post| post['hidden'] }
        # all_posts.each do |post|
        #   if post['categories'].include?("Aside")
        #     Jekyll.logger.warn YAML.dump(post)
        #   end
        # end

        all_posts = all_posts.reject { |post| post['categories'].include?("Aside")}

        pages = Pager.calculate_pages(all_posts, site.config['paginate'].to_i)
        (1..pages).each do |num_page|
          pager = Pager.new(site, num_page, all_posts, pages)
          if num_page > 1
            newpage = Page.new(site, site.source, page.dir, page.name)
            newpage.pager = pager
            newpage.dir = Pager.paginate_path(site, num_page)
            site.pages << newpage
          else
            page.pager = pager
          end
        end
      end

      # Static: Fetch the URL of the template page. Used to determine the
      #         path to the first pager in the series.
      #
      # site - the Jekyll::Site object
      #
      # Returns the url of the template page
      def self.first_page_url(site)
        if page = Pagination.template_page(site)
          page.url
        else
          nil
        end
      end

      # Public: Find the Jekyll::Page which will act as the pager template
      #
      # site - the Jekyll::Site object
      #
      # Returns the Jekyll::Page which will act as the pager template
      def self.template_page(site)
        site.pages.select do |page|
          Pager.pagination_candidate?(site.config, page)
        end.sort do |one, two|
          two.path.size <=> one.path.size
        end.first
      end

    end
  end
end
