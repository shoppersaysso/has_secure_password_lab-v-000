class User < ActiveRecord::Base
    has_secure_password
    validates :username, presence: true
    validates :name, presence: true
    validates :password, presence: true
    validates :password_confirmation, presence: true

    def is_valid?
    end

end
