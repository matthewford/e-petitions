class SponsorMailer < ApplicationMailer
  def sponsor_signed_email_below_threshold(sponsor)
    @petition, @sponsor = sponsor.petition, sponsor
    @sponsor_count = @petition.sponsor_count

    mail(
      subject: I18n.t('mailers.sponsor_mailer.sponsor_signed_email_below_threshold.subject', sponsor_name: @sponsor.name),
      to: @petition.creator.email
    )
  end

  def sponsor_signed_email_on_threshold(sponsor)
    @petition, @sponsor = sponsor.petition, sponsor
    @sponsor_count = @petition.sponsor_count

    mail(
      subject: I18n.t('mailers.sponsor_mailer.sponsor_signed_email_on_threshold.subject'),
      to: @petition.creator.email
    )
  end

  def petition_and_email_confirmation_for_sponsor(sponsor)
    @petition, @sponsor = sponsor.petition, sponsor

    mail(
      subject: I18n.t('mailers.sponsor_mailer.petition_and_email_confirmation_for_sponsor.subject'),
      to: @sponsor.email
    )
  end
end
