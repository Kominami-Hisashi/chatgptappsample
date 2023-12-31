class Chat < ApplicationRecord
  # 有効なアドバイザータイプのリスト
  ADVISER_TYPES = ['adviser1', 'adviser2', 'adviser3','adviser4','adviser5','adviser6','adviser7','adviser8','adviser9']

  # adviser_typeのバリデーション
  validates :adviser_type, inclusion: { in: ADVISER_TYPES }
end
