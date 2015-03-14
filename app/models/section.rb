class Section < ActiveRecord::Base
  has_many :pages, :dependent => :destroy

  validates_presence_of :title, :description

  alias_attribute :to_s, :title

  include AutoHtml
  auto_html_for :description do
    html_escape
    image
    simple_format
  end

  extend FriendlyId
  friendly_id :title, :use => [:slugged, :finders]
end
