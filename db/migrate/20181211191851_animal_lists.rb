class AnimalLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.column :name, :string
    end
  end
end
