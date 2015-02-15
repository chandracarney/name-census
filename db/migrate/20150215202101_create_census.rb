class CreateCensus < ActiveRecord::Migration
  def change
    create_table :census do |t|
      t.timestamps null: false

      t.integer :year, null: false, default: ""
      t.string :name, null: false, default: ""
      t.string :gender, null: false, default: ""
      t.string :occurrences, null: false, default: ""
    end
  end
end
