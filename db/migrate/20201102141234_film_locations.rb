class FilmLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :film_locations do |t|
      t.string :location_name
      t.string :country
    end
  end
end
