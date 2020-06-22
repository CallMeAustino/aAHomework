class User < ApplicationRecord
    attr_reader :password

    validates :username, presence: true
    validates :session_token, presence: true
    validates :password_digest, presence: true
    validates :password, length: { minimum: 6, allow_nil: true }

    before_validation(on: :create) do
        ensure_session_token
    end

    # def find_by_credentials(username, pw)
    #     User.all
    #     .where("username = #{username}")
    #     .where(BCrypt::Password.create("#{pw}"))
    # end

    # def ensure_session_token
    #     if session[:session_token] == nil 
    #         generate_session_token
    #     end
    # end

    # def reset_session_token!
    #     self.session_token == generate_session_token
    #     self.save!
    # end

    # def generate_session_token
    #     session[:session_token] = SecureRandom::urlsafe_base64
    # end
end