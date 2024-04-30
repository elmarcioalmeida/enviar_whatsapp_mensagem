require "test_helper"

class ContatosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get contatos_new_url
    assert_response :success
  end

  test "should get create" do
    get contatos_create_url
    assert_response :success
  end

  test "should get show" do
    get contatos_show_url
    assert_response :success
  end
end
