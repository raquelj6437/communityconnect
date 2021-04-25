# Preview all emails at http://localhost:3000/rails/mailers/opportunity_mailer
class OpportunityMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/opportunity_mailer/new_opportunity
  def new_opportunity
    OpportunityMailer.new_opportunity
  end

end
