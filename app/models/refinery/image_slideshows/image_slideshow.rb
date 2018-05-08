module Refinery
  module ImageSlideshows
    class ImageSlideshow < Refinery::Core::BaseModel
      self.table_name = 'refinery_image_slideshows'

      acts_as_indexed :fields => [:title]

      validates :title, presence: true, uniqueness: true

      has_many :image_slides, dependent: :destroy
    end
  end
end
