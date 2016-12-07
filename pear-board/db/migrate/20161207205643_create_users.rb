class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
    	t.string :full_name, { null: false }
    	t.string :email, { null: false }
    	t.string :picture_link, { default: "http://www.sessionlogs.com/media/icons/defaultIcon.png" }
    	t.string :password_digest, { null: false }
    	t.string :phone_number, { null: false }

      t.timestamps(null: false)
    end
  end
end
