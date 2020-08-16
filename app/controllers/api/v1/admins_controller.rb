class Api::V1::AdminsController < ApplicationController
  
  before_action :authorized, only: %i[show create]
  before_action :set_admin, only: %i[show create]

  # GET /admins/1
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

  def login
    @admin = Admin.find_by_email(admin_params[:email])

    if @admin&.authenticate(admin_params[:password])
      token = JsonWebToken.encode({adminId: @admin.id})
      render json: {admin: @admin, token: token}
    else
      head :unauthorized
    end
  end

  private

  def set_admin
    @admin = Admin.find(params[:id])
  end

  def admin_params
    params.fetch(:admin, {}).permit(:email, :password)
  end

end
