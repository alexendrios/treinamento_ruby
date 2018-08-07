#função
def calcula_vencedor(opcao, pc_ecolha)
    resultado = (opcao - pc_ecolha) % 3

    if resultado == 1
        'Você Ganhou'
    elsif resultado == 2
        'PC Ganhou'
    else
        "Deu empate!!"   
    end
end

novo_jogo = "S"

while novo_jogo == "S"
    puts ''
    puts "          -------- Pedra, Papel, Tesura --------"
    opcoes = {
        1 => 'Pedra',
        2 => 'Papel',
        3 => 'Tesoura'
    }
    
    opcoes.each do |k, v|
        puts "#{k} - #{v}"
    end
    puts ''
    print "Escolha uma Opção acima: "
    opcao = gets.to_i
    while opcoes[opcao].nil?
       print "Opção Inválida!! Escolha Novamente: " 
       opcao = gets.to_i
    end
    
    pc_ecolha = Random.rand(3) + 1
    
    puts "\nVocê escolheu #{opcao}"
    puts "O PC escolheu #{pc_ecolha} "
    
    puts ''
    print calcula_vencedor(opcao, pc_ecolha)
    puts ''
    puts "\nDeseja Continuar [S/N]"
    novo_jogo  = gets.chomp.upcase
end
puts ''
puts 'Obrigado por Jogar o Jogo'