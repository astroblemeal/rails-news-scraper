class ChangeNameOfRow < ActiveRecord::Migration[6.0]
  def change
    rename_column :news, :headline, :title
  end
end
