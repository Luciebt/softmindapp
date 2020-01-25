class Moment < ApplicationRecord
  mount_uploader :media, MediaUploader
  belongs_to :user
end
