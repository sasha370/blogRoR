class AddUsernameIndex < ActiveRecord::Migration[6.0]
  def change

    # Создаем индекс в таблице, уникальный
    add_index :users, :username, unique: true
  end
end
