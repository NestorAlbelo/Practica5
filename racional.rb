# Implementar en este fichero la clase para crear objetos racionales

require './gcd.rb'

class Fraccion

	#Definicion de los gets
	attr_reader :numerador, :denominador
	
	def initialize(numerator, denominator)
		@numerador = numerator
		@denominador = denominator
	end
	def to_s
		"(#{numerador}/#{denominador})"
	end
	def + (frac)
		a=(numerador*frac.denominador + frac.numerador*denominador)
		b=(denominador*frac.denominador)
		Fraccion.new((a/gcd(a,b)),(b/gcd(a,b)))
	end
	def - (frac)
		a=(numerador*frac.denominador - frac.numerador*denominador)
		b=(denominador*frac.denominador)
		Fraccion.new((a/gcd(a,b)),(b/gcd(a,b)))
	end
	def * (frac)
		a=(numerador*frac.numerador)
		b=(denominador*frac.denominador)
		Fraccion.new((a/gcd(a,b)),(b/gcd(a,b)))
	end
	def / (frac)
		a=(numerador*frac.denominador)
		b=(denominador*frac.numerador)
		Fraccion.new((a/gcd(a,b)),(b/gcd(a,b)))
	end
	
	
end


