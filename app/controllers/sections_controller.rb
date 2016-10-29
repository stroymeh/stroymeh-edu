class SectionsController < ApplicationController
  inherit_resources
  actions :show

  def index
    @pages = Page.roots.ordered.page(params[:page]).per(10)
  end

  def show
    show!{
      @pages = @section.pages.roots
      @tags = @pages.flat_map(&:tags)
    }
  end
end
