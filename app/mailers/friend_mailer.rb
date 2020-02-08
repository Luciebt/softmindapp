class FriendMailer < ApplicationMailer
  default from: "softmindapp@gmail.com"

  def new_friend_email
    @friend = params[:friend]

    mail(to: @friend.email, subject: "Send #{User.find(@friend.user_id).first_name} some words of encouragement")
  end
end
