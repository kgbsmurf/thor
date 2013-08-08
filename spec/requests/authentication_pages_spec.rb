require 'spec_helper'

describe "Authentication" do
  
  subject { page }
  
  describe "sign in page" do
    before { visit signin_path }
    
    it { should have_selector('h1',   text: 'Sign in')}
    it { should have_selector('title',   text: 'Sign in')}
  end
  
  describe "signin" do
    before { visit signin_path }
    
    describe "with invalid information" do
      before { click_button "Sign in" }
      
      it { should have_selector('title', text: 'Sign in') }
      it { should have_selector('div.alert.alert-error', text: 'Invalid') }
      
      describe "after visiting another page" do
        before { click_link "Home" }
        it { should_not have_selector('div.alert.alert-error', text: 'Invalid')}
      end
      
    end
    
    describe "with valid information" do
      let(:user) { FactoryGirl.create (:user)}
      before { signin_user }
      it { expect(page).to have_selector('title', text: user.name)}
      it { should have_link('Profile', href: user_path(user))}
      it { should have_link('Settings', href: edit_user_path(user))}
      it { should have_link('Sign out', href: signout_path)}
      it { should_not have_link('Sign in', href: signin_path)}
    end
  end
  
  describe "authorization" do
    let(:user) { FactoryGirl.create(:user) }
    
    describe "in the Users controller" do
      before { visit edit_user_path(user) }
      it { should have_selector('title', text: "Sign in") }
    end
    
    describe "submitting to the update action" do 
      before { put user_path(user) }
      specify { response.should redirect_to(signin_path) }
    end
  end 
  
end
