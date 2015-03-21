class AddTypeformToPages < ActiveRecord::Migration
  def change
    add_column :pages, :typeform, :text
  end
end
