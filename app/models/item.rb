class Item < ActiveRecord::Base
	def self.possible_match_for item
		where('id != ' + item.id.to_s).order("RANDOM()").first
		# TODO not liked
	end

	def to_s
		"#{name}"
	end
end
