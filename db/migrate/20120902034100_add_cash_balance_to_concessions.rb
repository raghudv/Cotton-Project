class AddCashBalanceToConcessions < ActiveRecord::Migration
  def change
    add_column :concessions, :cash_balance, :integer
  end
end
