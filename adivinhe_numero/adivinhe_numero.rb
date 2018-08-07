
novo_jogo = "S"

while novo_jogo == "S"
    
    puts "Adivinhe o número que estou pensando entre 1 e 100:";
    seu_numero = gets.to_i

    pc_numero = Random.rand(99) * 1

    tentativas = 1

while pc_numero != seu_numero
    if pc_numero > seu_numero
        puts "O número é maior que #{seu_numero}"
    else
        puts "O número é menor que #{seu_numero}"
    end

    tentativas += 1
    puts "Tente Novamento"
    seu_numero = gets.to_i
end

    puts "Parabéns, o número era #{pc_numero}"
    puts "Você utilizou #{tentativas} Tentativas"

    puts "Deseja jogar novamente? [S/N]"
    novo_jogo = gets.chomp

end

puts "Obrigado por Jogar"



