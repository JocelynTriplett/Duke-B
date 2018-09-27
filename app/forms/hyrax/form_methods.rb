module MorphoSource
	# Support methods to include in all displayed work forms
	module FormMethods
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
    	end
    end
	end
end