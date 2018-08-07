novo_jogo ="S"

while novo_jogo == "S"
    palavras = %w{cachorro gato camelo formiga dromedario elefante morcego}
palavra_sorteada = palavras.sample

palavra_tamanho = palavra_sorteada.size

puts "Descubra a palavra que estou pensando: "

palavra_parcial = []
palavra_tamanho.times do 
    palavra_parcial << " _ "
end

puts palavra_parcial.join

fim = false

while fim == false
    puts "Escola uma Letra: "
    sua_letra = gets.chomp
    
    aux = 0

    palavra_sorteada.each_char do |letra_palavra|
        if palavra_parcial[aux] == ' _ '
            if letra_palavra == sua_letra
                palavra_parcial[aux] = sua_letra
            end
        end
            aux += 1
    end

    if palavra_parcial.join.count(" _ ") > 0
        fim = false
        puts palavra_parcial.join
    else
        fim = true
    end
end

puts "Parabéns, a palavra era #{palavra_parcial.join} !!"

puts "Deseja Continuar [S?N]"

novo_jogo = gets.chomp
end

puts "Obrigado por se divertir com o nosso Jogo!!"

