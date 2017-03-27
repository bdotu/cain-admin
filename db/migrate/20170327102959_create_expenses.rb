class CreateExpenses < ActiveRecord::Migration[5.0]

  def change
    create_table :expense_activities do |t|
      t.float :gross_amount
      t.integer :payment_type_id
      t.text :item_description
      t.integer :issuing_person
      t.integer :receiving_person
      t.string :location
      t.date :receipt_received_or_issued
      t.string :platform
      t.text :comments
      t.timestamps
    end

    create_table :payment_types do |t|
      t.string :payment_type_name
    end

    add_index :expense_activities, :payment_type_id
    add_index :expense_activities, :issuing_person
    add_index :expense_activities, :receiving_person
  end

end
