require 'spec_helper'
require 'database_cleaner'
require 'ruby-debug'

#include ActionView::Helpers
logger = Logger.new(STDOUT)
DatabaseCleaner.strategy = :truncation

# then, whenever you need to clean the DB


describe "Company Pages" do
  
  #create user
  let(:user) { FactoryGirl.create(:user)}
  subject { page }
  
  before do
            visit edit_user_path(user)
            fill_in "Email",  with: user.email
            fill_in "Password", with: user.password
            click_button "Sign in"
          end
  
  
  describe "should have link to Create Company" do
    before { visit user_path(user) }  
    it { should have_content("Company") }
    it { should have_link("Create company", href: new_user_company_path(user)) }
  end
  
  
  
  describe "create company" do
    before { visit new_user_company_path(user) }
    it { should have_selector('h1', text: "Create company") }
  end
  
  describe "company" do
    before do
       
        
      @company = user.companies.create!(name: "Dinamo")
      #@company = user.companies.first
      
      visit company_path(@company, user_id: user.id)
    end
    it { should have_selector('title', text: "Dinamo") }
    it { should have_selector('li', text: "Dinamo") }
  end
 
  
end 