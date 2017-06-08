require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
test "#display_name when admin" do
  user = User.new(admin: true, name: 'bob')
  assert_equal 'bob (admin)', user.display_name
end

test "User#display_name no admin" do
  user = User.new(admin: false,  name: 'mika')
    assert_equal 'mika', user.display_name

   end
end
