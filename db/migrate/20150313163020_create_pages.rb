class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :slug
      t.text :content
      t.text :tags
      t.references :section, index: true

      t.timestamps null: false
    end
    add_foreign_key :pages, :sections
  end
end
