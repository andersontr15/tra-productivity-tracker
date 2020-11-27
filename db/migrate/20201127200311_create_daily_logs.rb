class CreateDailyLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :daily_logs do |t|
      t.datetime :date, :null => false, index: { unique: true }
      t.integer :active_listening_hours_logged, :default =>  0
      t.integer :passive_listening_hours_logged, :default =>  0
      t.integer :reading_hours_logged, :default =>  0
      t.boolean :anki_completed, :default =>  false
      t.boolean :has_worked_out, :default =>  false

      t.timestamps
    end
  end
end
