# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  password_digest :string
#  name            :string
#  twitter_handle  :string
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ApplicationRecord
  has_secure_password validations: false

  validates :email, uniqueness: true, format: /@/
  validates :password, presence: true, on: :create
  validates :password, length: { in: 6..20 }, allow_nil: true
  validates :name, presence: true
end
