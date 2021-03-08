class OpportunitiesController < ApplicationController
    def index
        @opportunity = Opportunity.all.order("created_at DESC")
    end

    def new
        @opportunity = Opportunity.new
    end

    def create
        @opportunity = Opportunity.new(opportunity_params)
        if @opportunity.save
            redirect_to @opportunity
        else
            render 'new'
        end
    end

    def show
        @opportunity = Opportunity.find(params[:id])
    end

    private

    def opportunity_params
        params.require(:opportunity).permit(:organization,:date,:hours,:signature)
    end
end
