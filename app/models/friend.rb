class Friend < ApplicationRecord
  acts_as_token_authenticatable
  belongs_to :user
end
