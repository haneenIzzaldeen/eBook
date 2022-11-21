class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :description
      t.integer :publish_year
      t.integer :rating
      t.timestamps
    end
  end
end
