class CollectData < ActiveRecord::Migration[5.1]
  def change
    create_table :sightings do |d|
      d.column :date_seen, :date
      d.column :list_id, :integer
    end
  end
end
