class AddPgroongaIndexToContacts < ActiveRecord::Migration
  def change
    add_index(:contacts, :name, using: "pgroonga")
    add_index(:contacts, :address, using: "pgroonga")    
  end
end
