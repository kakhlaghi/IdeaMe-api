class AddVotesToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :votes, :integer, :null => false, :default => 0
  end
end
