class JoinTableBetweenFavoritesPictures < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.belongs_to :picture, index: true
      t.belongs_to :user, index: true
      t.timestamps null: false
    end
  end
end
