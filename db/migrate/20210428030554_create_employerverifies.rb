class CreateEmployerverifies < ActiveRecord::Migration[6.1]
  def change
    create_table :employerverifies do |t|

      t.timestamps
    end
  end
end
