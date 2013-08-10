# == Schema Information
#
# Table name: companies
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

describe Company do
  
  it { should have_and_belong_to_many(:users) }
  it { should respond_to(:name) }
  
  
  describe "with logged in user" do
    let(:user) { FactoryGirl.create(:user)}
    before { @company = user.companies.build(name: "Dinamo") }

    subject { @company }
  
    describe "when company already exist for the user" do
      before do
          company_with_same_name = @company.dup
          company_with_same_name.name = @company.name.upcase
          company_with_same_name.save
        end

      it { should_not be_valid }
    end
    
  end
end
