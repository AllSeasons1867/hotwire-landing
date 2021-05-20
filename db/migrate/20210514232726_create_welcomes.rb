class CreateWelcomes < ActiveRecord::Migration[6.1]
  def change
    create_table :welcomes do |t|
      t.text :post

      t.timestamps
    end
  end
end
