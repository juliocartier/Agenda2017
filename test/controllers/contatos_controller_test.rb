require 'test_helper'

class ContatosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contatos_index_url
    assert_response :success
  end

end
