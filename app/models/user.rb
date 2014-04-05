class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:id]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :lastname, :name, :otchestvo, :phone, :request_id, :zveno_id, :size, :more

  validates :phone, presence: true, numericality: { only_integer: true, message: "only allows letters" }

  belongs_to :zveno

  def email_required?
  		false
	end

	def email_changed?
    false
  end

  def approve!
    update_attribute(:paid, 2)
  end
end
