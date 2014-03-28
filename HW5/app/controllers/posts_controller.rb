class PostsController < ApplicationController
	def index
		@user = User.find(params[:user_id])
	end
	def show
		@user = User.find(params[:user_id])
		@post = Post.find(params[:id])
	end
	def new
		@post = Post.new
		@user= User.find(params[:user_id])
	end
	def create
		 @post = Post.new(params[:post])
		 @post.user_id = params[:user_id]
		 if @post.save
		 	flash[:notice] = "Your post was saved successfully"
		 	redirect_to user_posts_path
		 else
		 	flash[:notice] = "There was a problem creating a new post for this user"
		 	redirect_to new_user_post_path
		 end
	end
	def edit
		@post = Post.find(params[:id])
		@user = User.find(params[:user_id])
	end
	def update
		@post = Post.update(params[:id],params[:post])
		if @post.save
			flash[:notice] = "Post was updated"
			redirect_to user_posts_path
		else
			flash[:notice] = "There was an error updating the post"
			redirect_to edit_user_post_path
		end
	end
	def destroy
		@post = Post.find(params[:id])
		if @post.destroy
			flash[:notice] = "User was deleted successfully"
			redirect_to user_posts_path
		else
			flash[:notice] = "There was an error deleting this post"
			redirect_to user_post_path
		end
	end
end