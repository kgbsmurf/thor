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
end
