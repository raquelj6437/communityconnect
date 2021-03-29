class AddUserIdToOpportunity < ActiveRecord::Migration[6.1]
  def change
    add_reference :opportunities, :user, foreign_key: true
  end
end
