class MakeRequiredFieldsNonNullable < ActiveRecord::Migration[5.0]
  def change
    change_column :posts, :author, :string, null: false
    change_column :posts, :title,  :string, null: false
    change_column :posts, :url,    :string, null: false
  end
end
