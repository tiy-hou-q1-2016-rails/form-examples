class AddBooks < ActiveRecord::Migration
  def change

    create_table :books do |t|
      t.string :title
      t.integer :author_id
    end
  end
end
