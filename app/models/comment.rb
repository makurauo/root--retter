class Comment < ApplicationRecord
  belongs_to :artist
  belongs_to :user

  with_options presence: true do
    validates :text
  end

end
