class CreateChampionships < ActiveRecord::Migration[5.2]
  def change
    create_table :championships do |t|
      t.date :start_date, null: false
      t.references :championship_type, foreign_key: true, null: false

      t.timestamps
    end
  end
end
