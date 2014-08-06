# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  album_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Photo, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
