class CreateCensus < ActiveRecord::Migration
  def change
    create_table :census do |t|
      t.timestamps null: false

      t.string :year, null: false, default: ""
      t.string :name, null: false, default: ""
      t.string :gender, null: false, default: ""
      t.integer :occurrences, null: false, default: ""
    end
  end
end
