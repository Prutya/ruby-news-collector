class AddWebsiteIdToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :website_id, :integer

    add_index :posts, :website_id, unique: true
  end
end
