require 'spec_helper'

describe LbdPage do
  let(:lbd_page) {FactoryGirl.create(:lbd_page)}
  
  
  describe "model" do
    it { should respond_to(:build_company) }
    it { should respond_to(:create_company) }
    it { should respond_to(:destroy) }
    it { should respond_to(:update) }
    it { should respond_to(:hello) }
    
    describe "associations:" do
      it { should belong_to(:company) }
    end
    
    describe "should match the FactoryGirl name" do
      specify { lbd_page.name == "Example LBD Listing" }
    end
    
    describe "with empty name" do
      before { lbd_page.name = "  " }
      it { should_not be_valid }
    end
    
    describe "with long nave over 50 letters" do
      before { lbd_page.name = "a" * 51 }
      it { should_not be_valid }
    end
  end
end
