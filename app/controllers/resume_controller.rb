class ResumeController < ApplicationController

	def show
	  send_file(
	    "#{Rails.root}/public/resume.pdf",
	    filename: "patrick_dougall_resume.pdf",
	    type: "application/pdf"
	  )
	end

end
