class MigrateTags < ActiveRecord::Migration
  def up
    Page.find_each do |page|
      page.cached_tags.split(', ').each do |tag|
        page.tags.find_or_create_by(name: tag)
      end
    end

    remove_column :pages, :cached_tags
  end

  def down
  end
end
