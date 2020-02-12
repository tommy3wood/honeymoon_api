class CreateDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :destinations do |t|
      t.string :name
      t.text :description
      t.string :activities
      t.string :accomodations
      t.integer :distance_from_santorini
      t.integer :rating, :default => 3

      t.timestamps
    end
  end
end
