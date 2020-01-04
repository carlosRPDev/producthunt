# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  url         :string
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  user_id     :integer
#

class Product < ActiveRecord::Base
  belongs_to :user

  validates :name, presence: true
  validates :url, presence: true
end
