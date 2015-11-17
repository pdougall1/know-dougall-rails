class ResumeController < ApplicationController

	def show
    Resume.build
	  send_file(
	    "#{Rails.root}/public/resume.pdf",
	    filename: "patrick_dougall_resume.pdf",
	    type: "application/pdf"
	  )
    # render text: ResumeHTML.build.html_safe
	end
end
