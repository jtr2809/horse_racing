module Respirar
    attr_accessor :vel1, :vel2,:vel3
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

class Pegorino < Horse
    def run(distancia)
        correr(distancia,vel1,vel2,vel3)
    end

    def initialize
    super
        @vel1 = rand(10.0..12.0)
        @vel2 = rand(9.0..13.0)
        @vel3 = rand(11.0..14.0) 
    end  
end

class Appaloosa < Horse
    def run(distancia)
        correr(distancia,vel1,vel2,vel3)
    end

    include Respirar

    def initialize
    super
        @vel1 = rand(10.0..12.0)
        @vel2 = rand(9.0..13.0)
        @vel3 = rand(11.0..14.0) 
    end  
end

class Chire < Horse
    def run(distancia)
        correr(distancia,vel1,vel2,vel3)
    end

    include Respirar

    def initialize
    super
        @vel1 = rand(11.0..15.0)
        @vel2 = rand(10.0..14.0)
        @vel3 = rand(12.0..13.0) 
    end  
end

class Race
    def race(distancia,apuesta,*competidores)
        puts "Largo de la pista: #{distancia}"
        competidores.each do |i| 
            puts "Caballo: #{i.class} Tiempo: #{i.run(distancia)} seg."
        end
    end
end



puts "Bienvenido a la carrera de caballos. A continuación, se listan los caballos que correrán en la carrera: "

caballos = [Pegorino.new,Appaloosa.new,Chire.new]
competidores = caballos.sample(2)

puts "Elija el caballo a apostar: "

competidores.each_with_index do |i,v| 
    puts "Numero: #{v+1} | Caballo: #{i.class}"
end

apuesta = gets.chomp.to_i
pistas=[200,300,500]

r = Race.new
r.race(pistas[rand(0..pistas.length-1)],apuesta,*competidores)



