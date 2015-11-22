class RemoveAuthorFromResearch < ActiveRecord::Migration
  def change
    remove_column :researches, :author, :string
  end
end
