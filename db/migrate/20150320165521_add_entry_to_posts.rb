class AddEntryToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :entry, :string
  end
end
