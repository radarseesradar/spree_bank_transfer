module Spree
  class Bank < ActiveRecord::Base
    attr_accessible :name, :account_no, :active, :instructions
    validates :name, :account_no, :instructions, :presence => true
    validates_uniqueness_of :account_no , :scope => :name

    scope :active, where(:active => true)
  end
end