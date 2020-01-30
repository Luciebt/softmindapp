class Moment < ApplicationRecord
  mount_uploader :media, PhotoUploader
  belongs_to :user
  # create enum with all media types
  # add media type field in moments table
  # regex to file extension
end
