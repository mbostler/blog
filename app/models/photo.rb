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

class Photo < ActiveRecord::Base
  belongs_to :album
end
