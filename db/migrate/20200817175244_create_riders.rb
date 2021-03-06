class CreateRiders < ActiveRecord::Migration[6.0]
  def change
    create_table :riders do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :city_of_origin, null: false
      t.string :state_of_origin, null: false
      t.decimal :latitude, null: false
      t.decimal :longitude, null: false
      t.belongs_to :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
