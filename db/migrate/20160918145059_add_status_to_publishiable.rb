class AddStatusToPublishiable < ActiveRecord::Migration
  def change
    add_column :topics, :state, :string
    add_column :posts,  :state, :string
  end
end
