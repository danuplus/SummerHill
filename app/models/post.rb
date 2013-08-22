class Post < ActiveRecord::Base
  belongs_to :post_category
  belongs_to :user
	has_many :comments, :dependent => :destroy
	validates_presence_of :post_category_id, :title, :desc
	is_impressionable

	def self.search(keywords)
		posts = order("created at desc")
		posts = posts.where("posts.title like ? OR posts.desc like ?", "%#{keywords}%", "%#{keywords}%" ) if keywords.present?
		posts
	end
end
