class CreatePcts < ActiveRecord::Migration
  def change
    create_table :pcts do |t|
      t.string :title
      t.text :content
      t.timestamps null: false
    end
  end
end
