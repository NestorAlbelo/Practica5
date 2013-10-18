# Implementar en este fichero las Pruebas Unitarias asociadas a la clase Fraccion

require "./racional.rb"
require "test/unit"

class Test_Fraccion < Test::Unit::TestCase
	def test_simple
		assert_equal "(12/8)", Fraccion.new(12,8).to_s
		assert_equal "(3/1)",(Fraccion.new(12,8)+Fraccion.new(6,4)).to_s
		assert_equal "(0/1)",(Fraccion.new(12,8)-Fraccion.new(6,4)).to_s
		assert_equal "(3/1)",(Fraccion.new(10,5)*Fraccion.new(6,4)).to_s
		assert_equal "(1/1)",(Fraccion.new(12,8)/Fraccion.new(6,4)).to_s

		assert_not_equal "(20/5)", Fraccion.new(12,8).to_s
		assert_not_equal "(8/5)",(Fraccion.new(12,8)+Fraccion.new(6,4)).to_s
		assert_not_equal "(4/5)",(Fraccion.new(12,8)-Fraccion.new(6,4)).to_s
		assert_not_equal "(6/0)",(Fraccion.new(10,5)*Fraccion.new(6,4)).to_s
		assert_not_equal "(7/12)",(Fraccion.new(12,8)/Fraccion.new(6,4)).to_s

	end

end
