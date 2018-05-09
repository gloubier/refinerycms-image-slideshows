module Refinery
  module ImageSlideshows
    class ImageSlideshow < Refinery::Core::BaseModel
      self.table_name = 'refinery_image_slideshows'

      acts_as_indexed :fields => [:title]

      validates :title, presence: true, uniqueness: true

      has_many :image_slides, dependent: :destroy

      class << self

        def live
          where draft: false
        end

        def with_live_slides
          includes(:image_slides).where( refinery_image_slides: { draft: false } )
        end

        def slideshow_by_title(title)
          live.with_live_slides.find_by_title(title)
        end

      end

    end
  end
end
