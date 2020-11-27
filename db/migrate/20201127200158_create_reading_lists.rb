class CreateReadingLists < ActiveRecord::Migration[6.0]
  def change
    create_table :reading_lists do |t|
      t.references :user, null: false, foreign_key: true
      t.string :type
      t.string :name

      t.timestamps
    end
  end
end
