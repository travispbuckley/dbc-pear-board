class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
    	t.integer :student_id
    	t.integer :mentor_id, { null: false }
    	t.integer :slot_id, { null: false }
    	t.datetime :session_datetime, { null: false }


      t.timestamps(null: false)
    end
  end
end
