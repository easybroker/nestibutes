class AddContactsAndNestedAttributes < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.column :name, :string
    end

    create_table :phone_numbers do |t|
      t.column :number, :string
      t.references :contact
    end

    create_table :email_addresses do |t|
      t.column :email, :string
      t.references :contact
    end
  end
end
