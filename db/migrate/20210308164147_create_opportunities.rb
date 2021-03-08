class CreateOpportunities < ActiveRecord::Migration[6.1]
  def change
    create_table :opportunities do |t|
      t.string :organization
      t.string :date
      t.string :hours
      t.string :signature

      t.timestamps
    end
  end
end
