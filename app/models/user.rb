class User < ActiveRecord::Base
  # Remember to create a migration!
  has_secure_password
	
	# associations example
	# has_many :xxx, foreign_key: :user_id etc.
	

	validates :email, presence: true, uniqueness: true
	validates :password, presence: true, length: {minimum: 6} 
end
