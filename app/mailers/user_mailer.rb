class UserMailer < ActionMailer::Base
  default from: "bluerobinproject@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.post_confirmation.subject
  #
  def post_confirmation(forum)
  @forum = forum

  mail to: User.order(:id).map(&:email).join(", "), subject: "Activity log Blue Robin project"
  end
end