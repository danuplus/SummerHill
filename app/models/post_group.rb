class PostGroup < ActiveRecord::Base
	has_many :post_categories
end
