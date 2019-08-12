class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string  :ip
      t.string  :user_agent

      t.timestamps
    end
  end
end
