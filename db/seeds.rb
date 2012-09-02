# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Concession.delete_all
Concession.create( :name=>"Ribaue",
  :concession_id=>1,
  :quantity_planned=>1,
  :quantity_procured=>1,
  :weight_loss=>1,
  :input_delivered=>1,
  :input_recovered=>1,
  :input_non_recovery=>1,
  :jute_bags_given=>1,
  :bags_received=>1,
  :bags_received_empty=>1,
  :transport_expense=>1,
  :cash_balance=> 100
)
Concession.create(  :name=>"ABC",
  :concession_id=>2,
  :quantity_planned=>2,
  :quantity_procured=>2,
  :weight_loss=>2,
  :input_delivered=>2,
  :input_recovered=>2,
  :input_non_recovery=>2,
  :jute_bags_given=>2,
  :bags_received=>2,
  :bags_received_empty=>2,
  :transport_expense=>2,
  :cash_balance=> 100
)
Concession.create(  :name=>"SAVZ",
  :concession_id=>3,
  :quantity_planned=>4,
  :quantity_procured=>3,
  :weight_loss=>3,
  :input_delivered=>3,
  :input_recovered=>3,
  :input_non_recovery=>3,
  :jute_bags_given=>3,
  :bags_received=>3,
  :bags_received_empty=>3,
  :transport_expense=>3,
  :cash_balance=> 100)
Concession.create(  :name=>"NAVZ",
  :concession_id=>3,
  :quantity_planned=>4,
  :quantity_procured=>3,
  :weight_loss=>3,
  :input_delivered=>3,
  :input_recovered=>3,
  :input_non_recovery=>3,
  :jute_bags_given=>3,
  :bags_received=>3,
  :bags_received_empty=>3,
  :transport_expense=>3,
  :cash_balance=> 100)
Concession.create(  :name=>"DE",
  :concession_id=>3,
  :quantity_planned=>4,
  :quantity_procured=>3,
  :weight_loss=>3,
  :input_delivered=>3,
  :input_recovered=>3,
  :input_non_recovery=>3,
  :jute_bags_given=>3,
  :bags_received=>3,
  :bags_received_empty=>3,
  :transport_expense=>3,
  :cash_balance=> 100)
  
  
