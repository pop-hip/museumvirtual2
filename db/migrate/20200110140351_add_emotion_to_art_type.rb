class AddEmotionToArtType < ActiveRecord::Migration[5.2]
  def change
    add_reference :art_types, :emotion, foreign_key: true
  end
end
