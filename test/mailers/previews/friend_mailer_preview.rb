# Preview all emails at http://localhost:3000/rails/mailers/friend_mailer
class FriendMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/friend_mailer/welcome

  def new_friend_email
    # Set up a temporary order for the preview
    friend = Friend.new(name: "rokas", email: "rokas@rokas.com", user_id: 1)
    FriendMailer.with(friend: friend).new_friend_email
  end
end
