class Resume

	def self.build
		new.build
	end

	def initialize(html: ResumeHTML.build)
		@pdf = WickedPdf.new.pdf_from_string(html)
	end

	def build
  	encoded_pdf = @pdf.force_encoding("UTF-8")
    File.open(path_to_pdf, 'w') { |f| f.write(encoded_pdf) }
    encoded_pdf
	end

  private

  def path_to_pdf
    Rails.root.join('public', 'resume.pdf')
  end
end
