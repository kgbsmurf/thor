# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string(255)
#

require 'spec_helper'

describe User do
  
  before { @user = User.new(name: "Example User", email: "user@example.com", 
                              password: "foobar21", 
                              password_confirmation: "foobar21")}
  
  subject { @user}
  
  it {should respond_to (:name)}
  it {should respond_to (:email)}
  it {should respond_to (:password_digest)}
  it {should respond_to (:password)}
  it {should respond_to (:password_confirmation)}
  
  
  
  it {should be_valid}
  
  ## Testing name
  
  describe "when name is not present" do
    before {@user.name = " "}
    it {should_not be_valid}
  end
  
  describe "when email is not present" do
    before {@user.name = " "}
    it {should_not be_valid}
  end
  
  describe "when name is too long" do
    before {@user.name = "a" * 51}
    it {should_not be_valid}
  end
  
  ## Testing email
  
  describe "when email format is invalid" do
    it "should be invalid" do
      addresses = %w[user@foo,com user_at_foo.org example.user@foo. 
                    foo@bar_baz.com foo@bar+baz.com]
      addresses.each do |invalid_address|
        @user.email = invalid_address
        @user.should_not be_valid
      end
    end
  end
  
  describe "when email address is already taken" do
    before do
      user_with_same_email = @user.dup
      user_with_same_email.email = @user.email.upcase
      user_with_same_email.save
    end
    
    it { should_not be_valid }
  end
  
  describe "email address with mixed case" do
    let (:mixed_case_email) { "BubBa@aol.com" }
    it "should be saved as all lower-case" do
      @user.email = mixed_case_email
      @user.save
      @user.reload.email.should == mixed_case_email.downcase
    end
  end
  
  ## Testing Password
  
  describe "when password is not present" do
    before {@user.password = @user.password_confirmation = " "}
    it { should_not be_valid }
  end
  
  describe "when password does not match password_confirmation" do
    before { @user.password_confirmation = "wrongpass" }
    it { should_not be_valid }
  end
  
  describe "when password_confirmation is nil" do
    before { @user.password_confirmation = nil }    
    it { should_not be_valid }
  end
  
  describe "should not contain only letters" do
    before { @user.password = @user.password_confirmation = "Simplelongpassword"}
    it { should_not be_valid }
  end
  
  
  describe "should not contain only numbers" do
    before { @user.password = @user.password_confirmation = "123123123123"}
    it { should_not be_valid }
  end
  
end
