class Api::PostsController < ApplicationController

	def index
		@posts = Post.all
		render json: {posts: @posts}
	end

	def show
		@post = Post.find params[:id]
		render json: {post: @post}
	end

	def create
		post = Post.new post_params
		post.format
		post.save
		render json: {post: post}
	end

	def update
		post = Post.find params[:id]
		post.update_attributes(post_params)
		post.format
		post.save
		render json: {post: post}
	end

	def destroy
		post = Post.find(params[:id]).destroy
		render json: {post: post}
	end

	private

def post_params
  params.require(:post).permit(:title, :topic, :entry, :formatted_entry, :created_at, :summary, :viewable)
end

end
