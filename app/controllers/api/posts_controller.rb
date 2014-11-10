class Api::PostsController < ApplicationController

	def index
		@posts = Post.all
		render json: {posts: @posts}
	end

	def show
		@post = Post.find params[:id]
		if @post.save
			render json: @post
		else
			head :bad_request
		end
	end

	def create
		post = Post.new post_params
		if post.save
			render json: {post: post}
		else
			head :bad_request
		end
	end

	def update
		post = Post.find params[:id]
		post.update_attributes(post_params)
		if post.save
			render json: {post: post}
		else
			head :bad_request
		end
	end

	def destroy
		post = Post.find(params[:id]).destroy
		if post.save
			render json: {post: post}
		else
			head :bad_request
		end
	end

	private

def post_params
  params.require(:post).permit(:title, :topic, :entry, :formatted_entry, :created_at, :summary, :viewable)
end

end
