class Item < ActiveRecord::Base

	has_attached_file :photo, styles: {
	    thumb: '100x100>',
	    square: '200x200#',
	    medium: '300x300>'
  		}

  	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

	def self.possible_match_for item
		where('id != ' + item.id.to_s).order("RANDOM()").first
		# TODO not liked
	end

	def to_s
		"#{name}"
	end
end