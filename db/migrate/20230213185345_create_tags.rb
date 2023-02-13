class CreateTags < ActiveRecord::Migration[7.0]
  def change
    create_table :tags do |t|
      t.string :title
      t.timestamps
    end
    create_join_table :gossips, :tags
  end
end
