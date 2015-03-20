class Post < ActiveRecord::Base
  has_many :comments

  validates :title, :presence => true
  validates :entry, :presence => true
end
