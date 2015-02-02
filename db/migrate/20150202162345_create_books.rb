class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.integer :price
      t.boolean :avaliable, default: true
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
