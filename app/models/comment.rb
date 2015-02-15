class Comment < ActiveRecord::Base
  has_many :subcomments
  belongs_to :post

end
