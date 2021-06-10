class PartsDetaile < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' }, { id: 2, name: 'ベンチプレス' }, { id: 3, name: 'インクラインベンチプレス' },
    { id: 4, name: 'チェストプレス' }, { id: 5, name: 'ラットプルダウン' }, { id: 6, name: 'デッドリフト' },
    { id: 7, name: 'チンニング' }, { id: 8, name: 'スクワット' }, { id: 9, name: 'レッグプレス' }, 
    { id: 10, name: 'レッグエクステンション' }, { id: 11, name: 'サイドレイズ' }, { id: 12, name: 'ショルダープレス' }, 
    { id: 13, name: 'フロントレイズ' }, { id: 14, name: 'アームカール' }, { id: 15, name: 'その他' } 
  ]

  include ActiveHash::Associations
  has_many :trainings
end
