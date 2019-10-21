class CreateChampionshipTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :championship_types do |t|
      t.string :name, null: false
      t.integer :length, null: false
      t.integer :min_characters

      t.timestamps
    end
  end
end
