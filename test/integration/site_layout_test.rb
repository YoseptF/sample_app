require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:joseph)
  end

  test 'layout links with and without logged in user' do
    get root_path
    assert_template 'static_pages/home'
    assert_select 'a[href=?]', root_path, count: 2
    assert_select 'a[href=?]', help_path
    assert_select 'a[href=?]', about_path
    assert_select 'a[href=?]', contact_path
    get contact_path
    assert_select 'title', full_title('Contact')

    log_in_as(@user)
    follow_redirect!
    assert_select 'a[href=?]', edit_user_path(@user)
    assert_select 'a[href=?]', user_path(@user)
    assert_select 'a[href=?]', logout_path
    assert_select 'a[href=?]', users_path
  end
end
