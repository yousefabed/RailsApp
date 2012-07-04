require 'test_helper'

class UserTest < ActiveSupport::TestCase
	test "should not save user without an email" do
  	user = User.new
  	assert !user.save
	end
	
    test "should  save user with only an email" do
  	user = User.new
  	user.email = "yousef.abed@gmail.com"
  	user.phone_number = "09999999"
  	assert user.save
	end
	
    test "should not save user with only a last name" do
  	user = User.new
  	user.last_name = "Abed"
  	assert !user.save
	end
	
 
end
