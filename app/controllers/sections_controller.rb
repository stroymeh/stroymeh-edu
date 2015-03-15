class SectionsController < ApplicationController
  inherit_resources
  actions :index, :show

  def show
    show!{
      @pages = @section.pages
    }
  end
end
