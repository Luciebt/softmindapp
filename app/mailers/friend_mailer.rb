class FriendMailer < ApplicationMailer
  default from: "from@softmind.app"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.friend_mailer.welcome.subject
  #
  def new_friend_email
    @friend = params[:friend]

    mail to: @friend.email, subject: "Send #{User.find(@friend.user_id).first_name} some words of encouragement"
  end
end
