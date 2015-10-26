class TagsController < ApplicationController
  def index
    @tag = ActsAsTaggableOn::Tag.find_by(:name => params[:tag])

    @pages = @tag.taggings if @tag
  end
end
