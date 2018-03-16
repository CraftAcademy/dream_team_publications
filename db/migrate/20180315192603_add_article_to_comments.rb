class AddArticleToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :article, foreign_key: true
  end
end
