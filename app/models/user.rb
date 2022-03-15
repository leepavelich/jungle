class User < ActiveRecord::Base

  has_secure_password

  validates :email, presence: true, 
                    confirmation: { case_sensitive: false },
                    uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, confirmation: true, length: { minimum: 5 }
  validates :password_confirmation, presence: true

end
