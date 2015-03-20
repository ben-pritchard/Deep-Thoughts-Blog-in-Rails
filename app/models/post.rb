class Post < ActiveRecord::Base
  validates :title, :presence => true
  validates :entry, :presence => true
end
