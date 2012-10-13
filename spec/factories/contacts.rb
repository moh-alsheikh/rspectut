# Read about factories at https://github.com/thoughtbot/factory_girl

# http://faker.rubyforge.org/rdoc/

=begin

FactoryGirl.define do
  factory :contact do |f|
    f.firstname "John"
    f.lastname "Doe"
  end
end

=end


require 'faker'

FactoryGirl.define do

  factory :contact do |f|

    f.firstname { Faker::Name.first_name }
    f.lastname { Faker::Name.last_name }
    f.job { Faker::Company.bs }
    f.hiredate   "2012-10-13" #{ Faker::Company.bs }
    f.city { Faker::Address.city }

  end

end


