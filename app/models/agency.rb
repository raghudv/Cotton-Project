class Agency < ActiveRecord::Base
  attr_accessible :cash_balance,:bags_received, :bags_received_empty, :concession_id, :input_delivered, :input_non_recovery, :input_recovered, :jute_bags_given, :name, :quantity_planned, :quantity_procured, :transport_expense, :weight_loss
end
