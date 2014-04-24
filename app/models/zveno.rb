class Zveno < ActiveRecord::Base
  attr_accessible :number, :all, :occupy

  has_many :users

  def use
  	percent = 100 / all

	y = users.count * percent
  end
end
