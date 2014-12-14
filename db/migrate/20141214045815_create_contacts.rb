class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.text :description
      t.string :subject
      t.string :email_adress

      t.timestamps
    end
  end
end
