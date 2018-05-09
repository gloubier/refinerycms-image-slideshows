class AddActiveToImagesSlidesAndSlideshows < ActiveRecord::Migration[5.1]
  def change
    add_column :refinery_image_slideshows, :active, :boolean, null: false, default: true
    add_column :refinery_image_slides, :active, :boolean, null: false, default: true
  end
end
