class CreateUptimeRecords < ActiveRecord::Migration[8.0]
  def change
    create_table :uptime_records do |t|
      t.integer :site_id, null: false
      t.boolean :available, null: false
      t.integer :ping, null: false

      t.timestamps
    end
  end
end
