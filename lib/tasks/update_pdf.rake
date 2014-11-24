namespace :pdf do
  desc "update the testing resume pdf"
  task update: :environment do
  	# testing_pdf_path =  Rails.root.join('app', 'wikidpdf', 'testing.pdf').to_s
  	path = Rails.root.join('public', 'resume.pdf').to_s
  	File.open(path, 'w') { |f| f.write(Resume.build) }
  end
end

