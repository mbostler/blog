# == Schema Information
#
# Table name: permissions
#
#  id         :integer          not null, primary key
#  role_id    :integer          not null
#  user_id    :integer          not null
#  created_at :datetime
#  updated_at :datetime
#

class Permission < ActiveRecord::Base
  belongs_to :user
  belongs_to :role
end
