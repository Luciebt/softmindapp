class Moment < ApplicationRecord


  mount_uploader :media, PhotoUploader
  belongs_to :user

  VIDEO_TYPES = %w(mp4 mov avi wmv mkv flv 3gp).freeze
  IMG_TYPES = %w(jpg png jpeg gif bmp tiff pdf).freeze
  AUDIO_TYPES = %w(mp3 flac wav ogg).freeze

  # create enum with all media types
  # add media type field in moments table
  # regex to file extension
end
