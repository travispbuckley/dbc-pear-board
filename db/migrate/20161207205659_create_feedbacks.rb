class CreateFeedbacks < ActiveRecord::Migration[5.0]
  def change
    create_table :feedbacks do |t|
    	t.integer :author_id, { null: false }
    	t.integer :session_id, { null: false }
    	t.text :feedback_text, { null: false }

      t.timestamps(null: false)
    end
  end
end
