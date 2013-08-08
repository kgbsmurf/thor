# Title Helper

def full_title(page_title)
  base_title = "Thor Platform"
  if (page_title.empty?)
    base_title
  else
    "#{page_title} | #{base_title}"
  end
end

def sign_in(user)
  visit signin_path
  fill_in "Email", with: user.email
  fill_in "Password", with: user.password
  click_button "Sign in"
  
  # Signin when not using Capybara as well.
  cookies[:remember_token] = user.remember_token
end
