class AddPhotoToPosts < ActiveRecord::Migration
  def change
    add_attachment :posts, :photo
  end
end
