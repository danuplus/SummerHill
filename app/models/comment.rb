class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
	validates :desc,  :presence => true, :length => { :minimum => 3 }
end
