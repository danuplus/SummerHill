class PostCategory < ActiveRecord::Base
  belongs_to :post_group
	has_many :posts
end
