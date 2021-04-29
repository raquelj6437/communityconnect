class OpportunityMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.opportunity_mailer.new_opportunity.subject
  #
  def new_opportunity(opportunity)
    @opportunity = opportunity
    mail to: @opportunity.signature, subject: "Confirm Hours for #{@opportunity.user.name}"
  end
end
