class CreateJoinTable < ActiveRecord::Migration
  def change
    create_table :pictures_tags do |t|
      t.integer :picture_id
      t.integer :tag_id
    end
  end
end
