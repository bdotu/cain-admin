class CreatePeople < ActiveRecord::Migration[5.0]

  def change
    create_table :people do |t|
      t.belongs_to :role, index: true
      t.string :title
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :country
      t.integer :phone
      t.string :email
      t.string :company
      t.string :date_of_first_contact
      t.text :comments
    end

    create_table :roles do |t|
      t.string :role_name
    end

    create_table :subscription_info do |t|
      t.string :email
      t.string :subscription_info
      t.boolean :subscribed
    end
  end

end
