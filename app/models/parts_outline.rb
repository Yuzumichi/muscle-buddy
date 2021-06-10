class PartsOutline < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' }, { id: 2, name: '胸' }, { id: 3, name: '背中' },
    { id: 4, name: '脚' }, { id: 5, name: '肩' }, { id: 6, name: '腕' },
    { id: 7, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :trainings
end
