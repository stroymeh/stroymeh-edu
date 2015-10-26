class SectionsController < ApplicationController
  inherit_resources
  actions :show

  def index
    @pages = Page.roots.ordered
  end

  def show
    show!{
      @pages = @section.pages.roots
      @tags = @pages.flat_map(&:tags)
    }
  end
end
