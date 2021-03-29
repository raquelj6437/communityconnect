class Opportunity < ApplicationRecord
    belongs_to :user

    has_many :opportunity
end
