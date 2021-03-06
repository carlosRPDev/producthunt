# == Schema Information
#
# Table name: products
#
#  id                 :integer          not null, primary key
#  name               :string
#  url                :string
#  description        :text
#  created_at         :datetime
#  updated_at         :datetime
#  user_id            :integer
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Product < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :votes

  has_one_attached :image

  validates :name, presence: true
  validates :url, presence: true
  validate :image_format

  def voted_by?(user)
    votes.exists?(user: user)
  end

  def image_format
    if image.attached?
      if image.blob.byte_size > 1000000
        image.purge_later
        errors[:base] << 'Too big'
      elsif !image.blob.content_type.starts_with?('image/')
        image.purge_later
        errors[:base] << 'Wrong format'
      end
    end
  end

end
