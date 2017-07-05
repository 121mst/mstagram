class CreateMsta < ActiveRecord::Migration
  def change
    create_table :msta do |t|
      t.string :title
      t.text :content
      t.timestamps null: false
    end
  end
end
