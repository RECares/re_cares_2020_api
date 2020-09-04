require 'test_helper'

class SiteModulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @site_module = site_modules(:one)
  end

  test "should get index" do
    get site_modules_url, as: :json
    assert_response :success
  end

  test "should create site_module" do
    assert_difference('SiteModule.count') do
      post site_modules_url, params: { site_module: { name: @site_module.name } }, as: :json
    end

    assert_response 201
  end

  test "should show site_module" do
    get site_module_url(@site_module), as: :json
    assert_response :success
  end

  test "should update site_module" do
    patch site_module_url(@site_module), params: { site_module: { name: @site_module.name } }, as: :json
    assert_response 200
  end

  test "should destroy site_module" do
    assert_difference('SiteModule.count', -1) do
      delete site_module_url(@site_module), as: :json
    end

    assert_response 204
  end
end
