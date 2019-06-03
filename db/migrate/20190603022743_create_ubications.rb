class CreateUbications < ActiveRecord::Migration[5.2]
  def change
    create_table :ubications do |t|
      t.float :latitude
      t.float :longitude
      t.datetime :sent_at
      t.string :vehicle_identifier
    end
  end
end
