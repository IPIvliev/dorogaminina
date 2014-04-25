class Zveno < ActiveRecord::Base
  attr_accessible :number, :all, :free

  has_many :users

  def use
  	percent = 100 / all

	y = users.count * percent
  end
end
