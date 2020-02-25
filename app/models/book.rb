class Book < ApplicationRecord

  validates :title, presence: true
  validates :body, presence: true
 
 def add_error_sample
    # nameが空のときにエラーメッセージを追加する
    if name.empty?
      errors.add(:name, "に関係するエラーを追加")
      errors[:base] << "モデル全体に関係するエラーを追加"
    end
  end

end
