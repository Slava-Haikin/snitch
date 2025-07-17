class User < ApplicationRecord
    has_many :sites, dependent: :destroy
    has_secure_password

    before_save { email.downcase! }

    validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
