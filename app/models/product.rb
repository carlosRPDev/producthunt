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
#

class Product < ActiveRecord::Base

end
