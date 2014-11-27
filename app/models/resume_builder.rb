require 'erb'

class ResumeBuilder

	def self.build_static_template
		new.build_static_template
	end

	def build_static_template
		html_string = renderer.result($personal_info.get_binding)
		File.open(path_to_resume, 'w') { |file| file.write(html_string) }
	end

	def renderer
		ERB.new(template_string)
	end

	def template_string
		File.open(path_to_resume_template).read
	end

	def path_to_resume_template
		Rails.root.join('app', 'wikidpdf', 'resume_template.html.erb').to_s
	end

	def path_to_resume
		Rails.root.join('app', 'wikidpdf', 'resume.html').to_s
	end
end
