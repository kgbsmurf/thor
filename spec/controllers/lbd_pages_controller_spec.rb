require 'spec_helper'
require 'pp'

describe LbdPagesController do
   let(:company) {FactoryGirl.create(:company)}
   
  describe "for new LBD Page" do
    it { should respond_to(:new) }
    it { should respond_to(:create) }
    it { should respond_to(:edit) }
    # it { should respond_to(:show) }
    it { should respond_to(:update) }
    it { should respond_to(:destroy) } 
    
   
    #let(:lbd_page) {FactoryGirl.create(:lbd_page)}
    specify { new_company_lbd_page_path(company).should_not be_empty }
    
    describe "sign up lbdpages#new method should work" do
      it "should be able to render new template" do 
        get 'new', { company_id: company }
        response.should be_success
        response.should render_template('new')
      end
      it "should generate Lbd Page and go to preview (show)" do
        post :create, company_id: company.id, lbd_page: {name: "Test"}
        response.should be_redirect
      end
    end
    
    describe "with existing LBD page" do
      before { lbd_page = FactoryGirl.create(:lbd_page) }
      it do
        get :show, company_id: company.id
        response.should be_success
      end
    end
    
    describe 'should bring all lbd pages' do
      before { lbd_page = FactoryGirl.create(:lbd_page) }
      specify "when going to /all" do
        get :all
        response.should be_success
      end
    end
    
    describe '/all link should be accessible' do
      specify "when going to *.luxurybuilderdirectory.com/" do
        request.host = 'hk.frptest.com'
         pp request.domain
         assert_routing "http://hk.frpt2est.com/", { :controller => "lbd_pages", :action => "new" }
#        response.should render_template('lbd_pages/all')
      end
      
    end

  end
end
