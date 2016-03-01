class AddAuthors < ActiveRecord::Migration
  def change

    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
    end
  end
end
