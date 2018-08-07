# coding: utf-8

agenda = {
    ANA: '8889 - 0002',
    PEDRO: '8889 - 7777'
}

while true
    puts ""
    puts "      ------ Agenda -------"
    puts ''
    puts '1 - Adicionar' 
    puts '2 - Atualizar'
    puts '3 - Exibir'
    puts '4 - Excluir'

    puts ''
    print 'Escolha a opção: '
    escolha = gets.chomp
    puts ''
    
    case escolha

        when '1'
            print "Insira o nome contato: "
            nome = gets.chomp.upcase
            if agenda[nome.to_sym].nil?
                print 'Insira o Telefone: '
                telefone = gets.chomp
                agenda[nome.to_sym] = telefone
            else
                puts "Este contato já existe"
            end

        when '2'
            puts "Que nome você deseja atualizar? "
            nome = gets.chomp.upcase
            if agenda[nome.to_sym].nil?
                puts "Este nome não existe"
            else
                print 'Qual o Telefone: '
                telefone = gets.chomp
                agenda[nome.to_sym] = telefone
            end

        when '3'
            contatos = agenda.size
            if contatos == 0
                puts "Não Existem contatos a serem exibidos"
            else
                agenda.each do |nome, telefone|
                    puts "Nome: #{nome} - Telefone #{telefone}"
                end
            end
        when '4'
            puts 'Qual o nome Gostaria de Excluir? '
            nome = gets.chomp.upcase
            if agenda[nome.to_sym].nil?
                puts "Este nome não Existe na Agenda"
            else
                agenda.delete(nome.to_sym)
                puts "Nome: #{nome} foi deletado"
            end
        else
            puts "Opção Inválida!!"
    end
end