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

require 'rails_helper'

RSpec.describe Permission, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
