require 'spec_helper'

describe Phone do

  it "has a valid factory" do
    FactoryGirl.create(:phone).should be_valid
  end 
  
  
  it "is invalid without a contact id" do
     FactoryGirl.build(:phone, contact_id: nil).should_not be_valid
  end
  
  
  it "is invalid without a phone type" do
     FactoryGirl.build(:phone, phone_type: nil).should_not be_valid
  end
  
  
  it "is invalid without a number" do
     FactoryGirl.build(:phone, number: nil).should_not be_valid
  end
  
  
  it "does not allow duplicate phone numbers per contact" do
    
    contact = FactoryGirl.create(:contact)
    FactoryGirl.create(:phone, contact: contact, phone_type: "home", number: "785-555-1234")
    FactoryGirl.build(:phone, contact: contact, phone_type: "mobile", number: "785-555-1234").should_not be_valid
    
  end
  

end
