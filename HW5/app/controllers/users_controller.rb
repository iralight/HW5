class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def new
		@user = User.new
	end
	def create
		@user = User.new(params[:user])
		if @user.save
			flash[:notice] = "User saved successfully"
			redirect_to root_path
		else
			flash[:notice] = "There was a problem creating user"
			redirect_to new_user_path
		end
	end
	def show
		puts "Showing user"
		@user = User.find(params[:id])
	end
	def edit
		@user = User.find(params[:id])
	end
	def update
		@user_id = params[:id]
		@user = User.update(@user_id, params[:user])
		if @user.save
			flash[:notice] = "User updated successfully"
			redirect_to root_path
		else
			flash[:notice] = "There was a problem updating user "
			redirect_to edit_user_path
		end
	end
	def destroy
		puts "Delete user"
		@user = User.find(params[:id])
		if @user.destroy
			flash[:notice] = "User deleted successfully"
			redirect_to root_path
		else
			flash[:notice] = "There was a problem deleting user"
			redirect_to user_path
		end
	end
end