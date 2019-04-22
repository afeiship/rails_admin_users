module RailsAdminUsers
  class User < ApplicationRecord
    validates_presence_of :username
    validates_uniqueness_of :username
    validates_presence_of :email
    validates_uniqueness_of :email

    has_secure_token :auth_token
    has_secure_password

    # This method is not available in has_secure_token
    def destroy_token
      self.update_columns(auth_token: nil)
    end

    def self.valid_login?(username, password)
      user = find_by(username: username)
      if user && user.authenticate(password)
        user
      end
    end
  end
end
