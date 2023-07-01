class AddColumnsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :LinePay, :boolean, default: false, null: false
    add_column :users, :PayPay, :boolean, default: false, null: false
    add_column :users, :RakutenPay, :boolean, default: false, null: false
    add_column :users, :DocomoPay, :boolean, default: false, null: false
    add_column :users, :MerPay, :boolean, default: false, null: false
    add_column :users, :AuPay, :boolean, default: false, null: false
  end
end
