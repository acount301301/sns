class AddUserIdToPosts < ActiveRecord::Migration[7.2]
  def change
    add_column :posts, :user_id, :integer
    add_reference :posts, :user, null: false, foreign_key: true
  end
end
