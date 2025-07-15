class CreateUptimeRecords < ActiveRecord::Migration[8.0]
  def change
    create_table :uptime_records do |t|
      t.references :site, null: false, foreign_key: true
      t.boolean :available, null: false
      t.integer :ping, null: false

      t.timestamps
    end
  end
end
