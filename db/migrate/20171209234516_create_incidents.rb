class CreateIncidents < ActiveRecord::Migration[5.1]
  def change
    create_table :incidents do |t|
      t.string :category
      t.text :incident_description
      t.string :location
      t.datetime :time_of_incident
      t.string :offender
      t.string :victim
      t.text :offender_description
      t.text :victim_description
      t.boolean :confidential
      t.string :status
      t.string :evidence
      t.timestamps
    end
    
    add_index :incidents, :status
  end
end
