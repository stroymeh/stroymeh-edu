class PagesController < ApplicationController
  inherit_resources
  actions :show

  belongs_to :section
end
