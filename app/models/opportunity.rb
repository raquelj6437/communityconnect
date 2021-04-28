class Opportunity < ApplicationRecord
  belongs_to :user
  attr_accessor :organization,:date,:hours,:signature
  validates :organization,:date,:hours,:signature,:presence => true
  validates :signature, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
