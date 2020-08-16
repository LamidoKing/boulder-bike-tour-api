require 'jwt'

class JsonWebToken
    SECRET_KEY = Rails.application.credentials.secret_key_base.to_s
  
    def self.encode(payload, exp = 24.hours.from_now)
      payload[:exp] = exp.to_i
      JWT.encode(payload, SECRET_KEY)
    end
  
    def self.decode(token)
      begin
        JWT.decode(token, SECRET_KEY)
      rescue JWT::DecodeError
        nil
      end
    end
  end
  
  