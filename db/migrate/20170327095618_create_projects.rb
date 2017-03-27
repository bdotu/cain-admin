class CreateProjects < ActiveRecord::Migration[5.0]

  def change
    create_table :projects do |t|
      t.belongs_to :project_type, index: true
      t.string :title
      t.integer :total_participants
      t.float :amount_raised
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :country
      t.text :description
      t.string :organizer
      t.text :comments
      t.timestamps
    end

    create_table :project_types do |t|
      t.string :project_type
    end

    create_table :donation_activities do |t|
      t.integer :people_id
      t.float :amount
      t.string :currency
      t.integer :project_id
      t.date :thank_you_sent
      t.integer :donation_platform_id
      t.date :receipt_sent
      t.text :comments
      t.timestamps
    end

    create_table :donation_platforms do |t|
      t.string :donation_platform_name
    end

    add_index :donation_activities, :people_id
    add_index :donation_activities, :project_id
    add_index :donation_activities, :donation_platform_id
  end

end
