namespace :pdf do
  desc "update the testing resume pdf"
  task update: :environment do
  	testing_pdf_path =  Rails.root.join('app', 'wikidpdf', 'testing.pdf').to_s
  	File.open(testing_pdf_path, 'w') { |f| f.write(Resume.build) }
  end
end

