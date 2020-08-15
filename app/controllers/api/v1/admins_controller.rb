class Api::V1::AdminsController < ApplicationController
  before_action :set_user, only: %i[show]

  # GET /users/1
  def show
    render json: @admin
  end
  
  def create
    @admin = Admin.new(admin_params)

    if @admin.save
      render json: @admin, status: :created
    else
      render json: @admin.errors, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @admin = Admin.find(params[:id])
  end

  def admin_params
    params.fetch(:admin, {}).permit(:email, :password)
  end

end
