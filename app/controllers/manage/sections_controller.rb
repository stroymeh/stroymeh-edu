class Manage::SectionsController < Manage::ApplicationController
  inherit_resources
  actions :all, :except => :show

  def create
    create!(:notice => 'Раздел добавлен успешно!')
  end

  def update
    update!(:notice => 'Раздел сохранен.')
  end

  def destroy
    destroy!(:notice => 'Раздел успешно удален!') { manage_sections_path }
  end

  private

  def permitted_params
    params.permit(:section => [:title, :description])
  end
end
