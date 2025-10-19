class AddPosterUrlToMoviesTable < ActiveRecord::Migration[7.1]
  def change
    add_column :movies, :poster_url, :text
  end
end
