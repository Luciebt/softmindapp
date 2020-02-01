class Friend < ApplicationRecord
  acts_as_token_authenticatable
  #field :token
  belongs_to :user
end
