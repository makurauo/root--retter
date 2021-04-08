class Artist < ApplicationRecord
 has_many :comments
 belongs_to :user 

  with_options presence: true do
    validates :name
    validates :explanation
  end
end
