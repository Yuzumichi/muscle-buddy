class CreateTrainings < ActiveRecord::Migration[6.0]
  def change
    create_table :trainings do |t|
      t.integer :parts_outline_id,  null: false
      t.integer :parts_detaile_id,  null: false
      t.datetime :start_time,       null: false
      t.integer :weight,            null: false
      t.integer :number_of_times,   null: false
      t.text :text
      t.references :user,           foreign_key: true
      t.timestamps
    end
  end
end
