class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:id]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :lastname, :name, :otchestvo, :phone, :request_id, :zveno_id, :size, :more, :dostavka, :tshirt_id

  validates :name, presence: true
  validates :lastname, presence: true
  validates :otchestvo, presence: true
  validates :phone, presence: true

  paginates_per 50

  belongs_to :zveno
  belongs_to :tshirt

  def email_required?
    false
  end

  def email_changed?
    false
  end

  def approve!
    update_attribute(:paid, 2)
  end

  def self.search(search)  
    if search  
      where('lastname LIKE ? OR id LIKE ?', "%#{search}%", "%#{search}%")  
    else  
      scoped  
    end  
  end  


  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end
end
