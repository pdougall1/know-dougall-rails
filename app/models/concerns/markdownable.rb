module Markdownable
	extend ActiveSupport::Concern

	def format
		self.formatted_entry = markdown(entry)
	end

  def markdown(text)
    renderer = PrettyHTML.new(hard_wrap: true)
    options = {
      no_intra_emphasis: true,
      fenced_code_blocks: true
    }
    Redcarpet::Markdown.new(renderer, options).render(text).html_safe
  end

end