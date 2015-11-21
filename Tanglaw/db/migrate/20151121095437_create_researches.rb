class CreateResearches < ActiveRecord::Migration
  def change
    create_table :researches do |t|
      t.string :author
      t.string :title
      t.text :significance
      t.text :future
      t.text :abstract

      t.timestamps null: false
    end
  end
end
