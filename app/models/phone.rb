class Phone < ActiveRecord::Base
  
  attr_accessible :contact_id, :number, :phone_type
  
  validates  :contact_id, :number, :phone_type , presence: true
  
  validates :number , uniqueness: { scope: :contact_id }
  
  belongs_to :contact
  
  
end
