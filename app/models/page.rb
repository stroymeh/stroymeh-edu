class Page < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, :use => [:slugged, :finders]

  belongs_to :section

  validates_presence_of :title, :content, :tags, :section_id
end
