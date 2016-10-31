class Section < ActiveRecord::Base
  has_many :pages, -> { order('title asc') }, :dependent => :destroy

  validates_presence_of :title, :description

  scope :ordered, -> { order(:created_at) }

  alias_attribute :to_s, :title

  include AutoHtml
  auto_html_for :description do
    html_escape
    image
    simple_format
  end

  extend FriendlyId
  friendly_id :title, :use => [:slugged, :finders]

  def should_generate_new_friendly_id?
    true
  end
end
