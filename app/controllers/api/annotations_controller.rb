class Api::AnnotationsController < ApplicationController

	def show
		@annotation = Annotation.find params[:id]
		render json: { annotation: @annotation }
	end

	def create
		annotation = Annotation.new annotation_params
		annotation.save
		render json: { annotation: annotation }
	end

	def update
		@annotation = Annotation.find params[:id]
		@annotation.update_attributes(annotation_params)
		if @annotation.save
			head :ok
		else
			head :bad_request
		end
	end

	def destroy
		annotation = Annotation.find(params[:id]).destroy
		render json: { annotation: annotation }
	end

	private

	def annotation_params
	  params.require(:annotation).permit(:entry, :created_at, :post_id, :name)
	end

end
