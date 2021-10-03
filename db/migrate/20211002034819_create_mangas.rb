class CreateMangas < ActiveRecord::Migration[6.1]
  def change
    create_table :mangas do |t|
      t.string :title
      t.text :summary
      t.timestamps
    end
  end
end
