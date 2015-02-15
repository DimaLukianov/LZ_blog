class Post < ActiveRecord::Base
  has_many :comments, :dependent => :destroy
  has_many :ref_post_categories, :dependent => :destroy
  has_many :categories, :through => :ref_post_categories

  validates :title, :presence => true
  validates :text, :presence => true
end
