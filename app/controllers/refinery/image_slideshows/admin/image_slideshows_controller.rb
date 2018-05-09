module Refinery
  module ImageSlideshows
    module Admin
      class ImageSlideshowsController < ::Refinery::AdminController

        crudify :'refinery/image_slideshows/image_slideshow'

        private

          def image_slideshow_params
            params.require(:image_slideshow).permit(
              :draft,
              :title,
              :position,
              :js_config,
              :height,
              :width
            )
          end
      end
    end
  end
end
