class Relationship < ApplicationRecord
  # 課題4　追加
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
end
