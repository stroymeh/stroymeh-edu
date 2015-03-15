class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :file
      t.references :page, index: true

      t.timestamps null: false
    end
    add_foreign_key :attachments, :pages
  end
end
