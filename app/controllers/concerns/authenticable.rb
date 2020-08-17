module Authenticable
  def current_admin
    if decoded_token
      adminId = decoded_token[0]['adminId']
      @current_admin = Admin.find_by(id: adminId) rescue ActiveRecord::RecordNotFound
  end

  end

  protected

  def auth_header
    request.headers['Authorization']
  end

  def decoded_token
    if auth_header
      token = auth_header.split(' ')[1]
      decoded = JsonWebToken.decode(token)
    end
  end

  def logged_in?
    !!current_admin
end
  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end

  end
  
  