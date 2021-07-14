class CreateInterventions < ActiveRecord::Migration[5.2]
  def change
    create_table :interventions do |t|
      t.bigint :author
      t.bigint :customer_id
      t.bigint :building_id
      t.bigint :battery_id
      t.bigint :column_id
      t.bigint :elevator_id
      t.bigint :employee_id
      t.datetime :start_date
      t.datetime :end_date
      t.string :result, default: "Incomplete"
      t.string :report
      t.string :status, default: "Pending"
      t.timestamps
    end
  end
end
