class ChangeNameOfRowFromUrlToLink < ActiveRecord::Migration[6.0]
  def change
    rename_column :news, :url, :link
  end
end
