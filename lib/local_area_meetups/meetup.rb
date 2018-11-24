class LocalAreaMeetups::Meetup
	attr_accessor :name, :members, :url
	@@all = []

	def initialize(cat_hash)
		cat_hash.each do |k,v|
			self.send(("#{k}="), v)
		end
		self
	end

	def self.all
		@@all
	end
end
