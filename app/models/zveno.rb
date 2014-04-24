class Zveno < ActiveRecord::Base
  attr_accessible :free, :number, :occupy, :user_id

  has_many :users

  def use
  	z = free + users.count
  	percent = 100 / z

	y = users.count * percent
  end
end
