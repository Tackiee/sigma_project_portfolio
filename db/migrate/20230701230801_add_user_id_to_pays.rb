class AddUserIdToPays < ActiveRecord::Migration[7.0]
  def change
    add_column :pays, :user_id, :integer
  end
end
