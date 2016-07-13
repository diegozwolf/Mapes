class CreateWelcomes < ActiveRecord::Migration
  def change
    create_table :welcomes do |t|
    	t.string :name
    	t.string :email
      t.timestamps null: false
    end
  end
end
