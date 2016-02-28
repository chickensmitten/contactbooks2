class AddJsonbToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :other_information, :jsonb, default: '[]'
    add_index :contacts, :other_information, using: :gin     
  end
end
