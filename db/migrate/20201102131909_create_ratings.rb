class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :movie
      t.integer :stars
      t.text :comments
      t.references :user
      t.timestamps
    end
  end
end
