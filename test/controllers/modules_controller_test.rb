require "test_helper"

class ModulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @module = modules(:one)
  end

  test "should get index" do
    get modules_url, as: :json
    assert_response :success
  end

  test "should create module" do
    assert_difference("Module.count") do
      post modules_url, params: { module: { name: @module.name } }, as: :json
    end

    assert_response :created
  end

  test "should show module" do
    get module_url(@module), as: :json
    assert_response :success
  end

  test "should update module" do
    patch module_url(@module), params: { module: { name: @module.name } }, as: :json
    assert_response :success
  end

  test "should destroy module" do
    assert_difference("Module.count", -1) do
      delete module_url(@module), as: :json
    end

    assert_response :no_content
  end
end
