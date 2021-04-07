class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string     :name,        null: false
      t.text       :explanation, null: false
      t.references :user,        foreign_key: true
      t.timestamps
    end
  end
end
