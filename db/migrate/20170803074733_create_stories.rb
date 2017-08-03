class CreateStories < ActiveRecord::Migration[5.1]
  def change
    create_table :stories do |t|
      t.column :title, :varchar
      t.column :image, :varchar
      t.column :intro, :varchar

      t.timestamps
    end
  end
end
