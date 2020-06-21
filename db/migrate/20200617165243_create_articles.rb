class CreateArticles < ActiveRecord::Migration[6.0]
  def change

    # Данная  миграция была создана с помощью команды
    # rails generate model Article title:string text:text
    # затем нужно сделать rake db:migrate
    create_table :articles do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
