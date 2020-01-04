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
end
