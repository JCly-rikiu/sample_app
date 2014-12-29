require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  def setup
    @bast_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "#{@bast_title}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{@bast_title}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | #{@bast_title}"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | #{@bast_title}"
  end
end
