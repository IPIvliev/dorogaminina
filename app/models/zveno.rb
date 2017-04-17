class Zveno < ActiveRecord::Base
  attr_accessible :number, :vse, :free, :can

  scope :add_on, where(:can => true) 
  scope :with_n_users, -> { select { |w| w.users.count < w.vse } }


  has_many :users

  def use
  	percent = 100 / vse

	y = users.where(:paid => 2).count * percent
  end


end