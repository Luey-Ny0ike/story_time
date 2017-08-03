class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.column :name, :varchar
      t.column :comment, :varchar
      t.column :story_id, :int

      t.timestamps
    end
  end
end
