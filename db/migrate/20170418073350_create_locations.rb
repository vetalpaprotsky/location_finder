class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string  :ip
      t.string  :city
      t.string  :region_name
      t.string  :region_code
      t.string  :metrocode
      t.string  :zipcode
      t.float   :latitude
      t.float   :longitude
      t.string  :country_name
      t.string  :country_code
      t.string  :time_zone

      t.timestamps
    end
  end
end
