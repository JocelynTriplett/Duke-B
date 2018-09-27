# Generated via
#  `rails generate hyrax:work Event`
module Hyrax
  # Generated form for Event
  class EventForm < Hyrax::Forms::WorkForm
    delegate :work_parents_attributes=, to: :model

    self.model_class = ::Event
    self.terms += [:resource_type]

    # This code block is extending self.build_permitted_params from Hyrax::Forms::WorkForm
    # This describes the parameters we are expecting to receive from the client
    # @return [Array] a list of parameters used by sanitize_params
    def self.build_permitted_params
      super + [
        :on_behalf_of,
        :version,
        :add_works_to_collection,
        {
          based_near_attributes: [:id, :_destroy],
          member_of_collections_attributes: [:id, :_destroy],
          work_members_attributes: [:id, :_destroy],
          work_parents_attributes: [:id, :_destroy]
        }
      ]
    end

    # backs the parent work search element
    # @return [NilClass]
    def find_parent_work; end

    def member_of_works
    	model.member_of - model.member_of_collections
    end

    def member_of_works_json
    	member_of_works.map do |parent|
    		{
    			id: parent.id,
    			label: parent.to_s,
    			path: @controller.url_for(parent)
    		}
    	end.to_json
    end
  end
end
