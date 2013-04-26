class CreateClassroomUsers < ActiveRecord::Migration
  def change
    create_table :classroom_users do |t|
      t.integer :classroom_id
      t.integer :user_id
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
