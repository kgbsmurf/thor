require 'spec_helper'


# Specs in this file have access to a helper object that includes
# the CompaniesHelper. For example:
#
# describe CompaniesHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
describe CompaniesHelper do
  #
end

def logger
  Rails.logger
  Rails.logger.level = 0 
end