class User < ActiveRecord::Base
	has_many :trips
	has_many :items

	def password_valid?(input)
		return self.password == input
	end
end
