class LbdPage < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  
  belongs_to :company
  
  validates :name, presence: true, length: { maximum: 50 }

  
  def hello
    return "Hi there"
     
  end
end
