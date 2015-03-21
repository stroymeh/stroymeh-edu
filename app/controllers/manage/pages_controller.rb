class Manage::PagesController < Manage::ApplicationController
  inherit_resources
  actions :all, :except => :index

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

  private

  def permitted_params
    params.permit(:page => [:title, :content, :tags, :section_id, :parent_id])
  end
end
