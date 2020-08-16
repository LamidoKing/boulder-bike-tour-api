class MockController
    include Authenticable
    attr_accessor :request
  
    def initialize
      mock_request = Struct.new(:headers)
      self.request = mock_request.new({})
    end
  end

class AuthenticableTest < ActionDispatch::IntegrationTest
    setup do
      @admin = admins(:one)
      @authentication = MockController.new
    end
  
    test 'should get admin from Authorization token' do
      @authentication.request.headers['Authorization'] = "Bearer " + JsonWebToken.encode(adminId: @admin.id)
      assert_equal @admin.id, @authentication.current_admin.id
    end
  
    test 'should not get admin from empty Authorization token' do
      @authentication.request.headers['Authorization'] = nil
      assert_nil @authentication.current_admin
    end
  end
  
  