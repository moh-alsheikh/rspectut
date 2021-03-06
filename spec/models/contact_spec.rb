require 'spec_helper'

describe Contact do
  
  it "has a valid factory" do
    FactoryGirl.create(:contact).should be_valid
  end  
	
  it "is invalid without a firstname" do
     FactoryGirl.build(:contact, firstname: nil).should_not be_valid
  end
  
 
  it "is invalid without a lastname" do
    FactoryGirl.build(:contact, lastname: nil).should_not be_valid    
  end	

  it "returns a contact's full name as a string" do
  	contact = FactoryGirl.build(:contact, firstname: "Mohammed", lastname: "Alsheikh")
  	contact.name.should == "Mohammed Alsheikh"
	
  end
  
  it "is invalid without a job" do
    FactoryGirl.build(:contact, job: nil).should_not be_valid    
  end
   
   it "is invalid without a hiredate" do
    FactoryGirl.build(:contact, hiredate: nil).should_not be_valid    
  end

 it "is invalid without a city" do
    FactoryGirl.build(:contact, city: nil).should_not be_valid    
  end
	


	
  	
  
	
end
