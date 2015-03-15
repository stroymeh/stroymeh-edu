module ApplicationHelper
  def document_title
    [page_title, I18n.t('site_name')].compact.join(' / ')
  end

  def page_title(title = nil)
    @page_title ||= I18n.t("page_title.#{controller_name}.#{action_name}", :title => title).html_safe
  end

  def markdown(text)
    renderer = Redcarpet::Render::HTML.new(:hard_wrap => true, :filter_html => true)

    options = {
      :autolink => true,
      :no_intra_emphasis => true,
      :fenced_code_blocks => true,
      :lax_html_blocks => true,
      :strikethrough => true,
      :superscript => true,
      :space_after_headers => true
    }

    Redcarpet::Markdown.new(renderer, options).render(text).html_safe
  end
end
