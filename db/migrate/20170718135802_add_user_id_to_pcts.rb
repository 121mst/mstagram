class AddUserIdToPcts < ActiveRecord::Migration
  def change
    add_column :pcts, :user_id, :integer
  end
end
