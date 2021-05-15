class CreateWordDictionaries < ActiveRecord::Migration[6.1]
  def change
    create_table :word_dictionaries do |t|
      t.string :word
      t.string :meaning
      t.timestamps
    end
  end
end
