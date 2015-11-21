class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :f_name
      t.string :l_name
      t.string :affiliation

      t.timestamps null: false
    end
  end
end
