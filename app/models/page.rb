class Page < ActiveRecord::Base
  belongs_to :section

  validates_presence_of :title, :content, :tags
end
