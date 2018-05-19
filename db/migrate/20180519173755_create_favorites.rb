class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :favoritable, polymorphic: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
