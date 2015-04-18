class AddApiKeyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :api_key, :string, unique: true
  end
end
