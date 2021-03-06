require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = 'Run Chicken Run'
  end

  test 'should get root' do
    get static_pages_home_url
    assert_response :success
  end

  test 'should get home' do
    get static_pages_home_url
    assert_response :success
    assert_select 'title', "Home | #{@base_title}"
  end

  test 'should get help' do
    get static_pages_help_url
    assert_response :success
  end

  test 'should get about' do
    get static_pages_about_url
    assert_response :success
  end
end
