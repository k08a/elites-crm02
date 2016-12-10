class AddUserIdToComments < ActiveRecord::Migration
  def change
    # 10課題 user_idカラム追加
    add_column :comments, :user_id, :integer
  end
end
