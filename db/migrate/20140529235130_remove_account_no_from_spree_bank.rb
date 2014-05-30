class RemoveAccountNoFromSpreeBank < ActiveRecord::Migration
  def up
    remove_column :spree_banks, :account_no
  end

  def down
    add_column :spree_banks, :account_no, :string
  end
end
