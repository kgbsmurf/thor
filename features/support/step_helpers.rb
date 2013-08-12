def sign_in
  visit root_path
  
  if has_link?("Sign In")
    click_link "Sign up" 
    fill_in "Name", with: "Test User"
    fill_in "Email", with: "test@user.com"
    fill_in "Password", with: "Password1"
    fill_in "Confirmation", with: "Password1"
    click_button "Create my account" 
  end
    should_not have_link('Sign In')
end

def create_company
  click_link "Create company"
  fill_in "Name", with: "Dinamo"
  click_button "Create company"
  
end