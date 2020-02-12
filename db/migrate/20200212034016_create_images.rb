class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :image_url
      t.integer :destination_id

      t.timestamps
    end
  end
end
