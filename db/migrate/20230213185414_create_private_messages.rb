class CreatePrivateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :private_messages do |t|
      t.text :content
      t.belongs_to :sender, index: true
      t.timestamps
    end
    
    create_join_table :private_messages, :users
  end
end
