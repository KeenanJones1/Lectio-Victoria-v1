require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = users(:valid)
  end


  test 'valid user' do
    assert @user.valid?, "Please check user requirements"
  end

  test 'invalid without name' do
    @user.name = nil
  # refute - Fails if test is a true value
    refute @user.valid?, 'saved user without name'
# asert_not_nil tests if expression is not nil
    assert_not_nil @user.errors[:name], 'no validation error for name present'
  end


  test '#stats' do
    assert_equal 7, @user.stats.size
  end


  test 'invalid without email'  do
    @user.email = nil
    refute @user.valid?
    assert_not_nil @user.errors[:email], 'no validation error for email present'
  end

  


  # @user.email = nil
  #   refute @user.valid? 
  #   assert_not_nil @user.errors[:email], 'no validation error for email present'

end
