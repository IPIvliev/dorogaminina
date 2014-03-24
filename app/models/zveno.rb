class Zveno < ActiveRecord::Base
  attr_accessible :free, :number, :occupy, :user_id

  has_many :users
end
