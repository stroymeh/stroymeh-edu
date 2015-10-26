class CacheTags < ActiveRecord::Migration
  def change
    rename_column :pages, :tags, :cached_tags
  end
end
