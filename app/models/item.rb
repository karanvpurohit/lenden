class Item < ActiveRecord::Base
	# belongs_to: posting
	belongs_to :user
	belongs_to :sub_category
end
