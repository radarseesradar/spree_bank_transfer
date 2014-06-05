require 'spec_helper'

describe Spree::Bank do
  it { should allow_mass_assignment_of :name }
  it { should allow_mass_assignment_of :instructions }
  it { should allow_mass_assignment_of :active }
  it { should validate_presence_of :name }
  it { should validate_presence_of :instructions }

  describe ".active" do
    before(:each) do
      @active_bank1 = Spree::Bank.create! :name => 'bank1', :instructions => '98765'
      @active_bank2 = Spree::Bank.create! :name => 'bank2', :instructions => '98765'
      @bank3 = Spree::Bank.create! :name => 'bank3', :instructions => '98765', :active => false
    end

    it "returns active banks" do
      Spree::Bank.active.should =~([@active_bank1, @active_bank2])
    end
  end
end