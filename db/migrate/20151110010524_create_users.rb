class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	#datos básicos para ambos prefiles
    	t.string :name
    	t.string :email
    	t.string :city
    	t.string :password
    	#datos para ciudad
    	t.string :skill
    	t.string :skills
    	t.string :expectation
    	t.string :expectation_reason
    	t.string :ocupation
    	t.string :observations
    	
    	#datos para filtrar el formulario de comunidad
    	t.string :leader_name
    	t.string :leader_email
        t.string :poblation
    	t.string :sector
    	t.string :product_focus
    	t.string :level
    	t.string :need
    	t.string :needs
    	t.string :need_description
    	#dato para filtrar formulario si es comunidad ciudad o admin
    	t.string :type

      t.timestamps null: false
    end
  end
end
