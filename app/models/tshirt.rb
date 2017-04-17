class Tshirt < ActiveRecord::Base
  attr_accessible :description, :image

  mount_uploader :image, TimageUploader

  has_many :users
end
