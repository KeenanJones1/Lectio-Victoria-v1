class CreateStats < ActiveRecord::Migration[6.0]
  def change
    create_table :stats do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.float :value

      t.timestamps
    end
  end
end
