SimpleNavigation::Configuration.run do |navigation|
  navigation.selected_class = 'active'

  navigation.items do |primary|
    primary.item :section, I18n.t('page_title.sections.index'), manage_root_path do |section|
      if @section && @section.persisted?
        section.item :edit,  I18n.t('page_title.sections.edit', :title => @section),  edit_manage_section_path(@section)
      end
      section.item :new,   I18n.t('page_title.sections.new'),   new_manage_section_path

      section.item :new, I18n.t('page_title.pages.new'), new_manage_page_path
      if @page && @page.persisted?
        section.item :edit, I18n.t('page_title.pages.edit'), edit_manage_page_path(@page)

        section.item :show, @page, manage_page_path(@page)
      end

    end
  end
end
