class CreateUptimeRecords < ActiveRecord::Migration[8.0]
  def change
    create_table :uptime_records do |t|
      t.integer :site_id
      t.boolean :available
      t.integer :ping

      t.timestamps
    end
  end
end
