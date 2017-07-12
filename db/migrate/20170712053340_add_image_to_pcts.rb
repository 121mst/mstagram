class AddImageToPcts < ActiveRecord::Migration
  def change
    add_column :pcts, :image, :string
  end
end
