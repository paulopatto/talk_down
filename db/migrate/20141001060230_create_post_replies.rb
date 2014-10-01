class CreatePostReplies < ActiveRecord::Migration
  def change
    # or use :create_join_table
    create_table :post_replies, id: false do |t|
      t.integer :post_id
      t.integer :reply_id
      t.timestamps
    end

    add_index :post_replies, [:post_id, :reply_id], unique: true
  end
end
