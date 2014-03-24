class User < ActiveRecord::Base
  attr_accessible :lastname, :name, :otchestvo, :phone, :request_id, :zveno_id, :size

  belongs_to :zveno
end
