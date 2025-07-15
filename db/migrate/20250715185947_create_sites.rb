class CreateSites < ActiveRecord::Migration[8.0]
  def change
    create_table :sites do |t|
      t.references :user, null: false, foreign_key: true
      t.string :url, null: false

      t.timestamps
    end
  end
end
