class TagsController < ApplicationController
  def index
    @tag = ActsAsTaggableOn::Tag.find_by(:name => params[:tag])

    @collection = @tag.taggings if @tag
  end
end
