class Zveno < ActiveRecord::Base
  attr_accessible :number, :vse, :free

  scope :add_on, where(:can => true) 
  scope :with_n_users, -> { select { |w| w.users.size < w.vse } }


  has_many :users

  def use
  	percent = 100 / vse

	y = users.count * percent
  end


end