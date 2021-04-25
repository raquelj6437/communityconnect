class OpportunityMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.opportunity_mailer.new_opportunity.subject
  #
  def new_opportunity(email)
    @email = email

    mail to: @email, subject: "Confirm Hours"
  end
end
