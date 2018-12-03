require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest

  def setup
      @user = users(:user)
  end

  test "login" do
    get url_for(controller: 'staticpages', action: 'index')
    assert_response :success

    post url_for(controller: 'sessions', action: 'create'), params: { email: @user.email, password: 'peanut' }, headers: { 'HTTP_REFERER':  url_for(controller: 'staticpages', action: 'index') }
    assert_response :redirect
    follow_redirect!
    assert_select 'a', 'Kijelentkezés'
    assert_not_nil session[:user]
  end

  test "logout" do
    get url_for(controller: 'staticpages', action: 'index')
    assert_response :success

    post url_for(controller: 'sessions', action: 'create'), params: { email: @user.email, password: 'peanut' }, headers: { 'HTTP_REFERER':  url_for(controller: 'staticpages', action: 'index') }
    assert_response :redirect

    assert_not_nil session[:user]

    get url_for(controller: 'sessions', action: 'destroy')
    assert_response :redirect
    follow_redirect!
    assert_select 'legend', "Login"

    assert_nil session[:user]
  end

end
