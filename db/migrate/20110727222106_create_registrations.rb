class CreateRegistrations < ActiveRecord::Migration
  def self.up
    create_table :registrations do |t|
      t.integer :person_id
      t.integer :service_id
      t.string :username
      t.string :display_name
      t.string :photo_url
      t.string :service_url

      t.timestamps
    end
  end

  def self.down
    drop_table :registrations
  end
end
