class SectionsController < ApplicationController
  inherit_resources
  actions :show

  def index
    @pages = Page.ordered
  end

  def show
    show!{
      @pages = @section.pages
    }
  end
end
