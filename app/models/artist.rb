class Artist < ApplicationRecord
  has_many :comments
  belongs_to :user

  with_options presence: true do
    validates :name
    validates :explanation
  end

  def self.search(search)
    if search != ''
      Artist.where('name LIKE(?)', "%#{search}%")
    else
      Artist.all
    end
  end
end
