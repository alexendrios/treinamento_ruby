#classe
class Monstro
    #atributos
    attr_accessor :energia, :ataque, :vivo
    
    #construtor
    def initialize
       self.energia = Random.rand(10) + 6
       self.vivo = true 
    end
    
    #metodos
    def bater(alvo)
        if alvo.esta_vivo?
          self.ataque = Random.rand(5) 
          puts "O dano do mostro foi #{self.ataque}" 
          alvo.energia -= self.ataque 
        else
            puts "Você está morto"
        end
    end

    #particularidade do ruby
    def esta_vivo?
        true if self.energia > 0
    end
end
#classe
class Heroi
    attr_accessor :energia, :ataque, :energia, :vivo,:numero_mortos
    
    #construtor
    def initialize
        self.energia = 30
        self.vivo = true
        self.numero_mortos = 0
    end
    
     #metodos
     def bater(alvo)
        if alvo.esta_vivo?
          self.ataque = Random.rand(5) + 3
          puts "Você acertou o monstro, seu dano foi de #{self.ataque}" 
          alvo.energia -= self.ataque 
          else
            puts "O monstro está morto:"
        end 
       unless alvo.esta_vivo?
        puts "O monstro está morto:\n\n"
        self.numero_mortos += 1
       end
    end

    #particularidade do ruby
    def esta_vivo?
        true if self.energia > 0
    end
end

#criação do Heroi
zeus = Heroi.new
puts zeus.inspect

#interação do programa
while zeus.esta_vivo?
    crak = Monstro.new
    puts crak.inspect
    while crak.esta_vivo?
        zeus.bater(crak)
        puts "A energia do crak: #{crak.energia}" if crak.esta_vivo?

        if crak.esta_vivo?
            crak.bater(zeus)
            "A energia do zeus: #{zeus.energia}"
            puts ''
        end
    end
end
#finalização
puts 'Zeus está morto'
puts "Você matou #{zeus.numero_mortos}"