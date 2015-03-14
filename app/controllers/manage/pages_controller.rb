class Manage::PagesController < Manage::ApplicationController
  inherit_resources
  actions :all, :except => [:index, :show]

  def create
    create!(:notice => 'Страница добавлена успешно!') { manage_root_path }
  end

  def update
    update!(:notice => 'Страница сохранена.') { manage_root_path }
  end

  def destroy
    destroy!(:notice => 'Страница успешно удалена!') { manage_root_path }
  end

  private

  def permitted_params
    params.permit(:page => [:title, :content, :tags, :section_id])
  end
end
