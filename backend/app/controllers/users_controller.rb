class UsersController < ApplicationController

  def index
    users = User.all
    if users.present?
      render json: users, status: 200
    else
      render json: { message: "No users found" }, status: 404
    end
  end

  def create
    user = User.find_or_create_by(username: params[:username])
    render json: user, status: 200
  end

  def show
    user = User.find_by(id: params[:id])
    if user
      render json: user, status: 200
    else
      render json: { message: "No user found" }, status: 404
    end
  end

  def destroy
    user = User.find_by(id: params[:id])
    if user
      user.destroy
      render json: { message: "User has been destroyed" }, status: 200
    else
      render json: { message: "User cannot be found or has been deleted already" }, status: 500
    end
  end

end
