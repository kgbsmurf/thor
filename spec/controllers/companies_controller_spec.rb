require 'spec_helper'

describe CompaniesController do
  
#  it { should respond_to(:new) }
#  
#  it { should respond_to(:create) }
#  
#  it  { should respond_to(:edit) }
#  
#  it  { should respond_to(:update) }
#  
#  it  { should respond_to(:destroy) }
  
  let(:user) { FactoryGirl.create(:user)}
  before { @company = user.companies.build(name: "Dinamo") }

 subject { @company }
 
  it { should respond_to(:name) }
  it { should respond_to(:users) }
  it { should respond_to(:user_ids) }
  
  it { should be_valid }
  
  it { expect(@company.name).to eq("Dinamo")}
  
  ## The company can exist even without any associated Users. 
  describe "when user_id is not present" do
    before { @company.user_ids.each {|id| id = nil } } 
    it { should be_valid }
  end
  
  describe "with blank name" do
    before { @company.name = " "}
    it { should_not be_valid }
  end
  
  describe "when name is longer than 50 characters" do
    before { @company.name = "a" * 51 }
    it { should_not be_valid }
  end
  
  describe "with duplicate company name" do
    
  end
  
end
