class Address
	# include Mongoid::Document
	# field :street_no,type: String
	# field :street_name, type: String
	# field :city, type: String
	# field :state, type: String
	# field :country, type: String

	attr_reader :street_no, :street_name, :city, :state, :country
	def initialize( street_no, street_name, city, state, country )
		@street_no = street_no
		@street_name = street_name
		@city = city
		@state = state
		@country = country
	end
	def mongoize
		[ street_no, street_name, city, state, country ]
	end
	class << self
		def demongoize(object)
			Address.new(object[0],object[1],object[2],object[3],object[4])
		end
		def mongoize(object)
			case object
			when Address then object.mongoize
			when Hash then Address.new(object[0],object[1],object[2],object[3],object[4]).mongoize
			else object
			end
		end
		def evolve(object)
			case object
			when Address then object.mongoize
	 	    else object
	 	    end		
		end
	end
end