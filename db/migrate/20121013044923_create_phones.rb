class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.integer :contact_id
      t.string :phone_type
      t.string :number

      t.timestamps
    end
  end
end
