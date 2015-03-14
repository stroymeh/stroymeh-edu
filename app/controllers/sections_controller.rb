class SectionsController < ApplicationController
  inherit_resources
  actions :all, :index, :show

  def show
    show!{
      @pages = @section.pages
    }
  end
end
