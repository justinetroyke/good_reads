class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :words
      t.integer :rating
      t.references :book, foreign_key: true
    end
  end
end
