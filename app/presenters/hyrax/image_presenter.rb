# Generated via
#  `rails generate hyrax:work Image`
module Hyrax
  class ImagePresenter < Hyrax::WorkShowPresenter
    delegate :year, to: :solr_document

    def initialize(image)
      @image = image
    end

    delegate :member_of, to: :@image

  end
end
