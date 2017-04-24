class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :posting_id
      t.string  :content
      t.timestamps
    end
  end
end
