class User < ActiveRecord::Base

  has_secure_password

  validates :email, presence: true, 
                    confirmation: { case_sensitive: false },
                    uniqueness: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, confirmation: true, length: { minimum: 5 }
  validates :password_confirmation, presence: true

  def self.authenticate_with_credentials(email, password)
    email = email.strip.downcase
    user = User.find_by_email(email)
    if user && user.authenticate(password)
      user
    else
      nil
    end
  end

end
