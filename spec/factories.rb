FactoryGirl.define do
  factory :user do
    name    "Andrey"
    email   "Bubba123@aol.com"
    password  "Password1"
    password_confirmation "Password1"
  end
  
  factory :company do
    name "Dinamo"
    user
  end
end