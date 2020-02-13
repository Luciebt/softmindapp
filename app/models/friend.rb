class Friend < ApplicationRecord
  after_save :send_friend_email
  acts_as_token_authenticatable
  belongs_to :user

  private

  def send_friend_email
    FriendMailer.with(friend: self).new_friend_email.deliver_now
  end
end
