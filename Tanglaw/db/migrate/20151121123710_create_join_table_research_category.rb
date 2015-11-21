class CreateJoinTableResearchCategory < ActiveRecord::Migration
  def change
    create_join_table :researches, :categories do |t|
      # t.index [:research_id, :category_id]
      # t.index [:category_id, :research_id]
    end
  end
end
