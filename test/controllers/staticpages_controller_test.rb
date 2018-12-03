require 'test_helper'

class StaticpagesControllerTest < ActionDispatch::IntegrationTest

  test "index_page" do
    get url_for(controller: 'staticpages', action: 'index')
    assert_response :succes
    assert_select "p"
  end
end
