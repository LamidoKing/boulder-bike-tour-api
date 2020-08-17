class CreateRiders < ActiveRecord::Migration[6.0]
  def change
    create_table :riders do |t|
      t.string :first_name
      t.string :last_name
      t.string :city_of_origin
      t.string :state_of_origin
      t.decimal :latitude, { precision: 10, scale: 6 }
      t.decimal :longitude, { precision: 10, scale: 6 }
      t.belongs_to :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
