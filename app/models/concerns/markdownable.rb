module Markdownable
	extend ActiveSupport::Concern

	def format
		self.formatted_entry = markdown(entry)
	end

  def markdown(text)
    renderer = PrettyHTML.new(hard_wrap: true, filter_html: true)
    options = {
      autolink: true,
      no_intra_emphasis: true,
      fenced_code_blocks: true,
      lax_html_blocks: true,
      strikethrough: true,
      superscript: true
    }
    Redcarpet::Markdown.new(renderer, options).render(text).html_safe
  end

end