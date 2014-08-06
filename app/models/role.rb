# == Schema Information
#
# Table name: roles
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Role < ActiveRecord::Base
  has_many :permissions, :dependent => :destroy
  
  def self.method_missing( meth, *args, &block )
    where( :name => meth.to_s.downcase ).first
  end
end
