class AddCashBalanceToAgencies < ActiveRecord::Migration
  def change
    add_column :agencies, :cash_balance, :integer
  end
end
