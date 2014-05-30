module Spree
  class Bank < ActiveRecord::Base
    attr_accessible :name, :active, :instructions
    validates :name, :instructions, :presence => true

    scope :active, where(:active => true)
  end
end