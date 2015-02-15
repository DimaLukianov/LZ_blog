class Category < ActiveRecord::Base
  has_many :ref_post_categories, :dependent => :destroy
  has_many :posts, :through => :ref_post_categories

  validates :category_name, :presence => true
end
