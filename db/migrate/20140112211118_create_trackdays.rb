class CreateTrackdays < ActiveRecord::Migration
  def change
    create_table :trackdays do |t|
      t.string :track
      t.string :organization
      t.string :session_type
      t.integer :price
      t.datetime :date

      t.timestamps
    end
  end
end
