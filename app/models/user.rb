class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  after_create :generate_api_key

  has_many :usages
  
  def generate_api_key
  	api_key = SecureRandom.hex
  	update_attribute(:api_key, api_key)
  end
end
