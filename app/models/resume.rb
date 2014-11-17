class Resume

	def self.build
		new.build
	end

	def build
	  	pdf.force_encoding("UTF-8")
	end

	def initialize
		@pdf = WickedPdf.new.pdf_from_html_file(path_to_resume_html)
	end

	private 

	attr_reader :pdf

	def path_to_resume_html
		Rails.root.join('app', 'wikidpdf', 'resume.html').to_s
	end

end