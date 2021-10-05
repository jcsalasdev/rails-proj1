class CreateMangas < ActiveRecord::Migration[6.1]
  def change
    create_table :mangas do |t|
      t.string :title
      t.text :summary
      t.string :vcode
      t.timestamps
    end
  end
end
