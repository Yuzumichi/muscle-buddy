class Training < ApplicationRecord

  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :parts_outline
  belongs_to :parts_detaile

  with_options presence: true do
    validates :start_time
    validates :weight, numericality: { only_integer: true, message: 'Half-width number' }
    validates :number_of_times, numericality: { only_integer: true, message: 'Half-width number' }

    with_options numericality: { other_than: 1, message: 'Select' } do
      validates :parts_outline_id
      validates :parts_detaile_id
    end
  end

  validates :text, presence: true, unless: :was_attached?
  def was_attached?
    self.image.attached?
  end
end
