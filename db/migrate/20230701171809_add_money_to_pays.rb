class AddMoneyToPays < ActiveRecord::Migration[7.0]
  def change
    add_column :pays, :money, :integer, null: false
  end
end
