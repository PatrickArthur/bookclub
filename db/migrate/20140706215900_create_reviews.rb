class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :book_id
      t.string :rating, null: false
      t.string :body, null: false
      t.timestamps
    end
  end
end
