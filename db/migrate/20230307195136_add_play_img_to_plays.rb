class AddPlayImgToPlays < ActiveRecord::Migration[7.0]
  def change
    add_column :plays, :play_img, :attachment
  end
end
