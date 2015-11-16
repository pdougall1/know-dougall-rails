require 'erb'

class ResumeHTML

	def self.build
		new.build
	end

	def build
		html_string = renderer.result($personal_info.get_binding)
		File.open(path_to_html, 'w') { |file| file.write(html_string) }
	end

	def renderer
		ERB.new(erb_string)
	end

	def erb_string
		File.open(path_to_erb).read
	end

	def path_to_erb
		Rails.root.join('app', 'wikidpdf', 'resume_template.html.erb').to_s
	end

	def path_to_html
		Rails.root.join('app', 'wikidpdf', 'resume.html').to_s
	end
end
