class Zveno < ActiveRecord::Base
  attr_accessible :free, :number, :occupy, :user_id

  has_many :users

  def use
  	z = free + occupy
  	percent = 100 / z

	y = occupy * percent
  end
end
