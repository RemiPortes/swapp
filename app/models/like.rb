class Like < ActiveRecord::Base
	belongs_to :item
	belongs_to :user_item, class_name: 'Item'
end
