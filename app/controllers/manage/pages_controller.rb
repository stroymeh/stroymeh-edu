class Manage::PagesController < Manage::ApplicationController
  inherit_resources
  actions :all, :except => :index

  def show
    show! {
      @attachments = @page.attachments
    }
  end

  def create
    create!(:notice => 'Страница добавлена успешно!') { manage_root_path(:anchor => @page.section) }
  end

  def update
    update!(:notice => 'Страница сохранена.') { manage_root_path(:anchor => @page.section) }
  end

  def destroy
    destroy!(:notice => 'Страница успешно удалена!') { manage_root_path }
  end

  private

  def permitted_params
    params.permit(:page => [:title, :content, :tags, :section_id])
  end
end
