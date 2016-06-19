require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  def setup
    @test_title = "Ruby on Rails Tutorial Sample App"
  end

  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home | #{@test_title}"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | #{@test_title}"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | #{@test_title}"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | #{@test_title}"
  end
 end
