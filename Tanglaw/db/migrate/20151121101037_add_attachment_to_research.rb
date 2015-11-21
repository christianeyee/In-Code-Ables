class AddAttachmentToResearch < ActiveRecord::Migration
  def change
    add_column :researches, :attachment, :string
  end
end
