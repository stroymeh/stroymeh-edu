class Section < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, :use => [:slugged, :finders]

  has_many :pages, :dependent => :destroy

  validates_presence_of :title, :description

  alias_attribute :to_s, :title
end
