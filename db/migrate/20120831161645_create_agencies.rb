class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.string :name
      t.integer :concession_id
      t.integer :quantity_planned
      t.integer :quantity_procured
      t.integer :weight_loss
      t.integer :input_delivered
      t.integer :input_recovered
      t.integer :input_non_recovery
      t.integer :jute_bags_given
      t.integer :bags_received
      t.integer :bags_received_empty
      t.integer :transport_expense

      t.timestamps
    end
  end
end
