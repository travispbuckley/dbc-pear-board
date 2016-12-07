class CreateSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :slots do |t|
    	t.string :day, { null: false }
    	t.string :start, { null: false }

      t.timestamps(null: false)
    end
  end
end
