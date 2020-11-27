class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :title
      t.string :genre
      t.integer :pages
      t.integer :year_published
      t.timestamps
    end
  end
end
