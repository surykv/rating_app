class FilmLocationMappings < ActiveRecord::Migration[6.0]
  def change
    create_table :film_location_mappings do |t|
      t.references :film_location
      t.references :movie
    end
    add_index :film_location_mappings, [:movie_id, :film_location_id], unique: true,  name: 'index_on_movie_and_film_location'
  end
end
