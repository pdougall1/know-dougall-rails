require 'erb'

class ResumeHTML

	def self.build
		new.build
	end

	def build
		renderer.result($personal_info.get_binding)
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
end
