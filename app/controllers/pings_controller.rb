class PingsController < ApplicationController

	def index
		puts 'JUST GOT PINGED'
		head :ok
	end

end
