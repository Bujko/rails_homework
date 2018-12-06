require 'test_helper'

class CreateOutfitTest < ActionDispatch::IntegrationTest

  def setup
    @u = users(:user)
    @sty = users(:stylist)
    @s = shoes(:shoe_one)
    @t = trousers(:trouser_one)
    @c = cloths(:cloth_one)
  end

  test 'add outfit' do
    get url_for(controller: 'staticpages', action: 'index')
    assert_response :success
    assert_select 'legend', "Login"

    post url_for(controller: 'sessions', action: 'create'), params: { email: @u.email, password: 'peanut' }, headers: { "HTTP_REFERER": url_for(controller: 'staticpages', action: 'index') }
    assert_not_nil session[:user]
    follow_redirect!

    get url_for(controller: 'outfits', action: 'new')
    assert_response :success


    post url_for(controller: 'outfits', action: 'create'), params: { outfit: {user_id: @u.id, stylist_id: @sty.id, shoe_id: @s.id, trouser_id: @t.id, cloth_id: @c.id, integer_checked: 0, outfit_type: "alma", season: "alma", name: "alma", comment: "No comment"}} ,headers: { "HTTP_REFERER": url_for(controller: 'outfits', action: 'new') }

    get url_for(controller: 'sessions', action: 'destroy')
    assert_nil session[:user]
    follow_redirect!
    assert_select 'legend', "Login"

    assert_nil session[:user]

  end

end
