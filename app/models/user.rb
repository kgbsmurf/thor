# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string(255)
#  remember_token  :string(255)
#

class User < ActiveRecord::Base
  
  has_and_belongs_to_many :companies
  
  
  include ActiveModel::ForbiddenAttributesProtection
  
  has_secure_password
  
  before_save { self.email.downcase! }
  before_save :create_remember_token
  
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, 
                    uniqueness: {case_sensitive: false}

  VALID_PASSWORD_REGEX = /(?!.*(.)\1{3})((?=.*[\d])(?=.*[A-Za-z])|(?=.*[^\w\d\s])(?=.*[A-Za-z])).{8,20}/
  validates :password, presence: true, length: { minimum: 8 }, 
                    format: { with: VALID_PASSWORD_REGEX}
  validates :password_confirmation, presence: true
  
  private
  
  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end
  
end
