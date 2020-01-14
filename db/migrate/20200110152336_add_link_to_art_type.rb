class AddLinkToArtType < ActiveRecord::Migration[5.2]
  def change
    add_column :art_types, :link, :string
  end
end
