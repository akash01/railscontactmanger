class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone_number
      t.timestamps
    end
  end

  def down
  	drop_table :contacts
  end
end
