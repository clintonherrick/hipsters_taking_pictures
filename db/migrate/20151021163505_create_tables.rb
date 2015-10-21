class CreateTables < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title
      t.integer :user_id
      t.timestamps
    end
    create_table :tags do |t|
      t.string :name
      t.timestamps
    end
    create_table :comments do |t|
      t.string :body
      t.integer :user_id
      t.integer :picture_id
      t.timestamps
    end
  end
end
