class PersonalInfoController < ApplicationController

	def show
		render json: $personal_info
	end

end
