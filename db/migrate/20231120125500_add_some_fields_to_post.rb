class AddSomeFieldsToPost < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :name, :string
    add_column :posts, :published, :boolean, default: false
  end
end
