class Contact < ActiveRecord::Base

  attr_accessible :firstname, :lastname , :job , :hiredate , :city
  
  validates  :firstname  , :lastname , :job  , :hiredate , :city , presence: true

  def name
    [firstname, lastname].join " "
  end

end
