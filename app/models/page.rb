class Page < ActiveRecord::Base
  belongs_to :section

  has_many :attachments, :dependent => :destroy

  validates_presence_of :title, :content, :tags, :section_id

  scope :ordered, -> { order('updated_at desc') }

  alias_attribute :to_s, :title

  has_ancestry :cache_depth => true

  extend FriendlyId
  friendly_id :title, :use => [:slugged, :finders]

  def should_generate_new_friendly_id?
    true
  end

  def tags_array
    tags.split(', ')
  end
end
