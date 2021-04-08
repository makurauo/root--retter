class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'アクション・バトル漫画' },
    { id: 3, name: '冒険・ファンタジー漫画' },
    { id: 4, name: 'SF漫画' },
    { id: 5, name: '恋愛・ラブコメ漫画' },
    { id: 6, name: '推理漫画' },
    { id: 7, name: 'スポーツ漫画' },
    { id: 8, name: 'ホラー漫画' },
    { id: 9, name: 'グルメ漫画' },
    { id: 10, name: '日常漫画' },
    { id: 11, name: 'ギャグ漫画' },
    { id: 12, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :users
end
