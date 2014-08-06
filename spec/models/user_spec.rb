# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  name            :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

require 'rails_helper'

RSpec.describe User, :type => :model do
  it "should be greater" do
    false.should == false
  end
  
  [:email, :password, :name].each do |meth|
    it "should respond to #{meth.inspect}" do
      u = User.new
      expect { u.send( meth ) }.to_not raise_error
    end
  end
end
