SimpleNavigation::Configuration.run do |navigation|
  navigation.selected_class = 'active'

  navigation.items do |primary|
    primary.item :section, I18n.t('page_title.section.index'), manage_root_path do |section|
      if @section && @section.persisted?
        section.item :show,  I18n.t('page_title.section.show', :title => @section),  manage_section_path(@section) do |page|
          page.item :edit,  I18n.t('page_title.page.edit', :title => @page),  edit_manage_page_path(@section, @page) if @page
        end
        section.item :edit,  I18n.t('page_title.section.edit', :title => @section),  edit_manage_section_path(@section)
      end
      section.item :new,   I18n.t('page_title.section.new'),   new_manage_section_path
    end
  end
end
