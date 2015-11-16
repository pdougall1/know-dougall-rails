require 'docverter'

namespace :pdf do
  desc "update the testing resume pdf"
  task update: :environment do
  	# testing_pdf_path =  Rails.root.join('app', 'wikidpdf', 'testing.pdf').to_s
  	ResumeHTML.build
  	pdf_path = Rails.root.join('public', 'resume.pdf').to_s
  	File.open(pdf_path, 'w') { |f| f.write(Resume.build) }
  end

  desc "testing doc"
  task test: :environment do
  	html_path = Rails.root.join('app', 'wikidpdf', 'resume.html').to_s
  	# css_path  = Rails.root.join('app', 'wikidpdf', 'resume.css').to_s
  	word_path = Rails.root.join('public', 'resume.doc').to_s
  # 	doc = Docverter::Conversion.run do |c|
		#   c.from    = "html"
		#   c.to      = "docx"
		#   c.content = File.open(html_path).read
		#   c.stylesheet = Rails.root.join('app', 'wikidpdf', 'resume.css').to_s
		# end
  	# File.open(word_path, 'w') { |f| f.write(doc) }
	  doc = Docverter::Conversion.run do |c|
	  	c.from = "html"
	  	c.to = 'docx'
	  	c.content = File.open(html_path, "r:UTF-8", &:read)
	  end
	  File.open(word_path, 'w') { |f| f.write(doc) }
  end
end

