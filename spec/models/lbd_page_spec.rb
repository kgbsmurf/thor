require 'spec_helper'

describe LbdPage do
  describe "model" do
    it { should respond_to(:new) }
    it { should respond_to(:create) }
    it { should respond_to(:update) }
    it { should respond_to(:edit) }
    it { should respond_to(:show) }
    it { should respond_to(:destroy) }
  
  end
end
