FactoryGirl.define do
  factory :user do
    name    "AndreyFactory"
    email   "Bubba123@aol.com"
    password  "Password1"
    password_confirmation "Password1"
  end
  
  factory :company do
    name "Dinamo"
    user
  end
  
  factory :lbd_page do
    name "Example LBD Listing"
    description "TEst test test"
  end
end