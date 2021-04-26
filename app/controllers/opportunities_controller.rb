class OpportunitiesController < ApplicationController
    def index
        @opportunity = Opportunity.where(:user_id => session[:user_id]).order("created_at DESC")
    end

    def new
        @opportunity = Opportunity.new
    end

    def create
        @opportunity = Opportunity.new(opportunity_params)
        @opportunity.user_id = session[:user_id]
        @opportunity.save
        @email = @opportunity.signature
        OpportunityMailer.new_opportunity(@email).deliver_now
        redirect_to '/dashboard'
    end

    def show
        @opportunity = Opportunity.find(params[:id])
    end

    private

    def opportunity_params
        params.require(:opportunity).permit(:organization,:date,:hours,:signature)
    end
end
