class Moment < ApplicationRecord
  mount_uploader :media, PhotoUploader
  belongs_to :user
end
