class Users::RegistrationsController < Devise::RegistrationsController
	after_create :add_user_role

	private
		def add_user_role
			self.add_role :user
		end
end