# Generated via
#  `rails generate hyrax:work Event`
module Hyrax
  # Generated controller for Event
  class EventsController < ApplicationController
    # Adds Hyrax behaviors to the controller.
    include Hyrax::WorksControllerBehavior
    include Hyrax::BreadcrumbsForWorks
    self.curation_concern_type = ::Event

    # Use this line if you want to use a custom presenter
    self.show_presenter = Hyrax::EventPresenter
  end
end
