class AddUsername < ActiveRecord::Migration[6.0]
  def change
    # в таблицу Users добавляем столбец Username с типом String
    add_column :users, :username, :string
    end

end
