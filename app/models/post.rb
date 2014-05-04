class Post < ActiveRecord::Base
  attr_accessible :name, :picture, :text

  mount_uploader :picture, PictureUploader
end
