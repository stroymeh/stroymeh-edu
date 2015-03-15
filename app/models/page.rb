class Page < ActiveRecord::Base
  belongs_to :section

  has_many :attachments, :dependent => :destroy

  validates_presence_of :title, :content, :tags, :section_id

  scope :ordered, -> { order('updated_at desc') }

  alias_attribute :to_s, :title

  include AutoHtml
  auto_html_for :content do
    html_escape
    image
    simple_format
  end

  extend FriendlyId
  friendly_id :title, :use => [:slugged, :finders]

  def tags_array
    tags.split(', ')
  end
end
