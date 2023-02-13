class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.belongs_to :user, index: true
      t.belongs_to :gossip, index: true
      t.references :parent_comment, foreign_key: { to_table: :comments }
      t.timestamps
    end
  end
end
