class CreateSites < ActiveRecord::Migration[8.0]
  def change
    create_table :sites do |t|
      t.integer :user_id
      t.string :url

      t.timestamps
    end
  end
end
