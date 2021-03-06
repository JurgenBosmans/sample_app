# == Schema Information
# Schema version: 20100402090951
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe User do

	before(:each) do 
		@attr = { :name => "Example User", :email => "user@example.com" }
	end
	
	it "should require an email address" do
		no_email_user = User.new(@attr.merge(:email => ""))
		no_email_user.should_not be_valid 
	end
	it "should reject names that are too long" do
		long_name = "a" * 51 
		long_name_user = User.new(@attr.merge(:name => long_name)) 
		long_name_user.should_not be_valid
	end
end
