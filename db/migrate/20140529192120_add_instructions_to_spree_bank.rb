class AddInstructionsToSpreeBank < ActiveRecord::Migration
  def change
    add_column :spree_banks, :instructions, :text
  end
end
