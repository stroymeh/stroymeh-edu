SimpleNavigation::Configuration.run do |navigation|
  navigation.selected_class = 'active'

  navigation.items do |primary|
    primary.item :section, I18n.t('page_title.section.index'), manage_root_path do |section|
      if @section && @section.persisted?
        section.item :edit,  I18n.t('page_title.section.edit', :title => @section),  edit_manage_section_path(@section)
      end
      section.item :new,   I18n.t('page_title.section.new'),   new_manage_section_path

      section.item :new, I18n.t('page_title.page.new'), new_manage_page_path
      if @page && @page.persisted?
        section.item :edit, I18n.t('page_title.page.edit'), edit_manage_page_path(@page)
      end
    end
  end
end
