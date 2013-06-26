class User < ActiveRecord::Base
	before_save { self.email = email.downcase }

	validates :name,
		length: { minimum: 2, maximum: 50 }

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email,
		presence: true,
		format: { with: VALID_EMAIL_REGEX },
		uniqueness: { case_sensitive: false }

	validates :phone_number,
		presence: true

	has_secure_password

	validates :password,
		length: { minimum: 6, maximum: 50 }

	validates :password_confirmation,
		presence: true
end
