class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.date :release_date
      t.float :rating
      t.string :genre

      t.timestamps
    end
  end
end
