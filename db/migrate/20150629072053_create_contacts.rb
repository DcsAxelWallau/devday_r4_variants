class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :street_address
      t.string :zip
      t.string :email
      t.string :phone
      t.string :gender

      t.timestamps null: false
    end
  end
end
