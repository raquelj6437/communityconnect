require 'dotenv/load'
require 'bundler'
Bundler.require

require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/' do
    # puts params
    @db = SQLite3::Database.open 'timesheet.db'
    @organization = params[:organization]
    @date = params[:date]
    @hours = params[:hours]
    @signature = params[:signature]

    add(@db,@organization,@date,@hours,@signature)
    erb :index
  end
end
