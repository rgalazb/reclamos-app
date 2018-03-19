class CreateComplains < ActiveRecord::Migration[5.1]
  def change
    create_table :complains do |t|
      t.references :company, foreign_key: true
      t.references :user, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
