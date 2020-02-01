# Preview all emails at http://localhost:3000/rails/mailers/friend_mailer
class FriendMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/friend_mailer/welcome
  def welcome
    FriendMailer.welcome
  end

end
