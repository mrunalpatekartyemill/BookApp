class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :text
      t.string :author
      t.belongs_to :book
      t.timestamps null: false
    end
  end

end
