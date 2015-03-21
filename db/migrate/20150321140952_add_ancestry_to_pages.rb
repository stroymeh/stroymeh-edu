class AddAncestryToPages < ActiveRecord::Migration
  def change
    add_column :pages, :ancestry, :string
    add_column :pages, :ancestry_depth, :integer, :default => 0

    add_index :pages, :ancestry
  end
end
