class CreateArtTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :art_types do |t|
      t.string :title
      t.string :date
      t.string :author
      t.string :interpreter
      t.string :dimention

      t.timestamps
    end
  end
end
