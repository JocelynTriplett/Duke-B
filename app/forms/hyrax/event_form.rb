# Generated via
#  `rails generate hyrax:work Event`
module Hyrax
  # Generated form for Event
  class EventForm < Hyrax::Forms::WorkForm
    self.model_class = ::Event
    self.terms += [:resource_type]
  end
end
