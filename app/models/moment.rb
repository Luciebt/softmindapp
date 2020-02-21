class Moment < ApplicationRecord
  attr_accessor :media
  attr_accessor :seen

  mount_uploader :media, PhotoUploader
  belongs_to :user
  after_create_commit :assign_type

  VIDEO_TYPES = %w(mp4 mov avi wmv mkv flv 3gp).freeze
  IMG_TYPES = %w(jpg png jpeg gif bmp tiff pdf).freeze
  AUDIO_TYPES = %w(mp3 flac wav ogg).freeze

  private

  def assign_type
      self.update(media_type: self.media.resource_type)
  end

end
