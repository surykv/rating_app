class CreateMovieCrewMappings < ActiveRecord::Migration[6.0]
  def change
    create_table :crew_mappings do |t|
      t.references :movie
      t.references :crew_member
      t.timestamps
    end
    add_index :crew_mappings, [:movie_id, :crew_member_id], unique: true,  name: 'index_on_movie_and_crew'
  end
end
