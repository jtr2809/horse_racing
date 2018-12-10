module Respirar
    def respirar
        puts "Respirando.. ssss ssss"
    end
end

class Horse
    attr_accessor :vel1,:vel2,:vel3
    def correr (distancia,vel1,vel2,vel3)
        tiempo_total = distancia*0.25/vel1 + distancia*0.5/vel2 + distancia*0.25/vel3
        tiempo_total.round(3)
    end
end

#Clases de los caballos

class PuraSangre < Horse
    def initialize
        super
        @vel1 = rand(11..14)
        @vel2 = rand(13..15)
        @vel3 = rand(9..12)
    end

    def run(distancia)
        correr(distancia,vel1,vel2,vel3)
    end
end

class CuartoMilla < Horse
    def initialize
        super
        @vel1 = rand(12..13)
        @vel2 = rand(13..16)
        @vel3 = rand(14..15)
    end

    def run(distancia)
        correr(distancia,vel1,vel2,vel3)
    end
end

class Appaloosa < Horse
    def initialize
    super
        @vel1 = rand(10.0..12.0)
        @vel2 = rand(9.0..13.0)
        @vel3 = rand(11.0..14.0) 
    end

    def run(distancia)
        correr(distancia,vel1,vel2,vel3)
    end
    include Respirar
end

class Clydesdale < Horse
    def initialize
        super
        @vel1 = rand(13..16)
        @vel2 = rand(13..16)
        @vel3 = rand(13..16)
    end

    def run(distancia)
        correr(distancia,vel1,vel2,vel3)
    end
end

class Frison < Horse
    def initialize
        super
        @vel1 = rand(12..14)
        @vel2 = rand(14..15)
        @vel3 = 14
    end   
    def run(distancia)
        correr(distancia,vel1,vel2,vel3)
    end
end

class Shire < Horse
    def initialize
        super
        @vel1 = rand(14..15)
        @vel2 = rand(15..16)
        @vel3 = rand(12..14)
    end
    def run(distancia)
        correr(distancia,vel1,vel2,vel3)
    end
end

class Percheron < Horse
    def initialize
        super
        @vel1 = rand(13..17)
        @vel2 = rand(14..18)
        @vel3 = rand(10..12)
    end
    def run(distancia)
        correr(distancia,vel1,vel2,vel3)
    end
    
end

class Andaluz < Horse
    def initialize
        @vel1 = rand(10..11)
        @vel2 = rand(11..12)
        @vel3 = rand(9..18)
    end

    def run(distancia)
        correr(distancia,vel1,vel2,vel3)
    end
end

class Teke < Horse
    def initialize
        super
        @vel1 = rand(13..16)
        @vel2 = rand(14..17)
        @vel3 = rand(14..15)    
    end
    
    def run(distancia)
        correr(distancia,vel1,vel2,vel3)
    end
    
end

class Mustang < Horse

    def initialize
        super
        @vel1 = rand(9..10)
        @vel2 = rand(16..18)
        @vel3 = rand(11..12)
    end
    def run(distancia)
        correr(distancia,vel1,vel2,vel3)
    end
end

#Logica de la carrera

class Race
    def race(distancia,apuesta,*competidores)
        puts "Largo de la pista: #{distancia}"
        competidores.each do |i| 
            puts "Caballo: #{i.class} Tiempo: #{i.run(distancia)} seg."
        end
    end
end

puts "Bienvenido a la carrera de caballos. A continuación, se listan los caballos que correrán en la carrera: "

caballos = [CuartoMilla.new,Appaloosa.new,Clydesdale.new,Frison.new,Shire.new,Percheron.new,Andaluz.new,Teke.new,Mustang.new]
competidores = caballos.sample(2)

puts "Elija el caballo a apostar: "

competidores.each_with_index do |i,v| 
    puts "Numero: #{v+1} | Caballo: #{i.class}"
end

apuesta = gets.chomp.to_i
pistas=[200,300,500]

r = Race.new
r.race(pistas[rand(0..pistas.length-1)],apuesta,*competidores)



