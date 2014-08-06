# == Schema Information
#
# Table name: albums
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  author_id   :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Album < ActiveRecord::Base
  has_many :photos
end
