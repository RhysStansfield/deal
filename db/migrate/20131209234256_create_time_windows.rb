class CreateTimeWindows < ActiveRecord::Migration
  def change
    create_table :time_windows do |t|
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
