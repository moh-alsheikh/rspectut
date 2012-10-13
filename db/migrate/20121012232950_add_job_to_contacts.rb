class AddJobToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :job, :string
  end
end
