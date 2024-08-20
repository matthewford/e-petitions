class FeedbackMailer < ApplicationMailer
  def send_feedback(feedback)
    @feedback = feedback

    mail  to: Site.feedback_email,
          subject: I18n.t('mailers.feedback.subject'),
          reply_to: feedback.email
  end
end
