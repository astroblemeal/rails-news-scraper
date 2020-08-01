class CreateNews < ActiveRecord::Migration[6.0]
  def change
    create_table :news do |t|
      t.text :headline
      t.string :url

      t.timestamps
    end
  end
end
