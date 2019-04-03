class CreateChampionshipTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :championship_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
