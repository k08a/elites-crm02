class Comment < ActiveRecord::Base
  belongs_to :customer
  # 課題10-userアソシエーション
  belongs_to :user
  # 課題08-validates(maximum200)追加
  validates :body, presence: true, length: {maximum: 200}
  validates :customer_id, presence: true
  
end
