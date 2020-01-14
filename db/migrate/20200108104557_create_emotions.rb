class CreateEmotions < ActiveRecord::Migration[5.2]
  def change
    create_table :emotions do |t|
      t.string :titre
      t.string :description

      t.timestamps
    end
  end
end
