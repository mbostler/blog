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

class User < ActiveRecord::Base
  has_secure_password

  has_many :permissions, :dependent => :destroy
  has_many :roles, :through => :permissions
  validates_uniqueness_of :email, :name
  
  def self.method_missing( meth, *args, &block )
    where( "UPPER(name)=?", meth.to_s.upcase ).first
  end
  
  def has_role?( role )
    roles.map( &:name ).include? role.to_s.downcase
  end

  def add_role( role )
    return true if roles.include?( role )
    permissions.create! :role_id => role.id
  end
end
