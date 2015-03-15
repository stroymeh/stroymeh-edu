class Attachment < ActiveRecord::Base
  mount_uploader :file, AttachmentUploader

  belongs_to :page

  validates_presence_of :file

  def content_type
    file.content_type.split('/').last
  end

  def human_filename
    file.path.split("/").last
  end

  def is_image?
    %w(jpg jpeg png).include?(content_type)
  end
end
