class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :author
      t.integer :isbn
      t.decimal :price

      t.timestamps
    end
  end
end
