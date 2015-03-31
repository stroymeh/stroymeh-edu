class Manage::PagesController < Manage::ApplicationController
  inherit_resources
  actions :all, :except => :index
  custom_actions :collection => :sort

  def show
    show! {
      @attachments = @page.attachments
    }
  end

  def create
    create!(:notice => 'Страница добавлена успешно!')
  end

  def update
    update!(:notice => 'Страница сохранена.')
  end

  def destroy
    destroy!(:notice => 'Страница успешно удалена!') { manage_root_path }
  end

  def sort
    sort! {
      @page = Page.find(params[:page_id])

      @page.sort_childrens(params[:page])

      render :nothing => true and return
    }
  end

  private

  def permitted_params
    params.permit(:page => [:title, :content, :typeform, :tags, :section_id, :parent_id])
  end
end
