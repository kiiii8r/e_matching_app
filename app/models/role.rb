class Role < ApplicationRecord
  self.data = [
    { id: 0, name: '---' },
    { id: 1, name: 'フロントエンド' },
    { id: 2, name: 'サーバーサイド' },
  ]
end
