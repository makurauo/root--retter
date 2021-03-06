class Artist < ApplicationRecord
  has_many :comments
  belongs_to :user

  default_scope -> { order(created_at: :desc) }

  with_options presence: true do
    validates :name, length: {maximum: 20 }
    validates :explanation
  end

  def self.search(search)
    if search != ''
      Artist.where(['name LIKE(?)', "%#{search}%"])
    else
      Artist.all
    end
  end
end
