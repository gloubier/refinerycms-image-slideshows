module Refinery
  module ImageSlideshows
    class ImageSlide < Refinery::Core::BaseModel
      self.table_name = 'refinery_image_slides'

      extend Mobility
      translates :title, :caption, :link_url, :body

      acts_as_indexed fields: [:title]

      validates :title, presence: true
      validates :image_id, presence: true

      belongs_to :image_slideshow
      belongs_to :image, class_name: '::Refinery::Image'

      delegate :height, :width, to: :image_slideshow
    end
  end
end
