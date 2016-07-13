class User < ActiveRecord::Base
	validates :name, :city, presence: true
	validates :email, presence: true, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}, uniqueness: true
	validates :password, length: {minimum: 6}

	#validaciones para ciudad
	validates :skill, :skills, :expectation, :ocupation, presence: true, if: :type_city?

	#validar para mostrar formulario de ciudad evaluar el valor del campo type
	def type_city?
		:type == "ciudad"
	end

end
