# == Schema Information
#
# Table name: companies
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Company < ActiveRecord::Base
 
  include ActiveModel::ForbiddenAttributesProtection 
  has_and_belongs_to_many :users
  has_one :lbd_page, validate: true
  
  validates :name, presence: true, length: { maximum: 50 }
  
  #Additional Methods
  
  ## Checks if LBD Page already exist. Returns <tt>false</tt> if doesnt - <tt>true</tt> if does
  
  def has_lbd_page?
    if self.lbd_page == nil
      false
    else
      true
    end
  end
  
end
