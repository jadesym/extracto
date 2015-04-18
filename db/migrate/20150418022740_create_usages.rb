class CreateUsages < ActiveRecord::Migration
  def change
    create_table :usages do |t|
      t.integer :user_id
      t.string :file_url
      t.text :data

      t.timestamps null: false
    end
  end
end
