class Chat < ApplicationRecord
  # 有効なアドバイザータイプのリスト
  ADVISER_TYPES = ['adviser1', 'adviser2', 'adviser3']

  # adviser_typeのバリデーション
  validates :adviser_type, inclusion: { in: ADVISER_TYPES }
end
