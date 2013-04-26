class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :name
      t.integer :partner_id
      t.integer :seats
      t.integer :seats_used

      t.timestamps
    end
    add_index :classrooms, 'partner_id', name: 'index_classrooms_on_partner_id'
  end
end
