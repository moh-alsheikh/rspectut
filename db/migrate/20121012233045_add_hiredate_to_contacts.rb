class AddHiredateToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :hiredate, :date
  end
end
