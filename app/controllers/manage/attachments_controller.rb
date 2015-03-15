class Manage::AttachmentsController < Manage::ApplicationController
  inherit_resources

  belongs_to :page
  actions :all, :except => [:index, :show, :create]

  def create
    @attachment = @page.attachments.create(:file => params[:file])

    respond_to do |format|
      format.json { render :json => @attachment }
    end
  end

  private

  def permitted_params
    params.permit(:attachment => :file)
  end
end
