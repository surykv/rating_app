class CreateRoleMappings < ActiveRecord::Migration[6.0]
  def change
    create_table :role_mappings do |t|
      t.references :role
      t.references :crew_member
      t.timestamps
    end

    add_index :role_mappings, [:role_id, :crew_member_id], unique: true,  name: 'index_on_role_and_crew'
  end
end
