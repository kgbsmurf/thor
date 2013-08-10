require 'spec_helper'

describe "StaticPages" do
  let (:base_title) {"Thor Platform"}
  describe "Home Page" do
    before {visit root_path}
    it {page.should have_selector('title', text: full_title('Home'))}
  end
  
  
  describe "Help Page" do
    before {visit help_path}
    it {page.should have_selector('title', text: full_title('Help'))} 
  end
  
  describe "Logged-in User HomePage" do
    subject { page }
    
    let(:user) { FactoryGirl.create(:user)}
    
    before do
            visit edit_user_path(user)
            fill_in "Email",  with: user.email
            fill_in "Password", with: user.password
            click_button "Sign in"
            visit root_path
          end
    
    it { should have_content(user.name)}
  end
end
