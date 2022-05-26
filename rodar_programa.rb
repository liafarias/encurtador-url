require 'csv'
require_relative 'script_reduzido'
require_relative 'script_completo'
require 'securerandom'
    
def novo
    puts "
    1 -- Fazer uma nova pesquisa
    0 -- Sair
    \n" 
    print "Digite uma opção: "
    recarregar = gets.chomp.to_i
    if recarregar == 1
        system("clear")
        load "rodar_programa.rb"
    elsif recarregar == 0
        system("clear")
    else 
        puts "Digite uma opção válida"
        load "rodar_programa.rb"
    end
end

    puts "
    1 -- Encurtar endereço 
    2 -- Reverter para endereço completo 
    0 -- Sair
    \n"

    print "Digite uma opção: "
    opcao = gets.chomp.to_i

    case opcao
    when 1
        url = End_completo.new
        url.receber_end_completo
        novo
    when 2
        end_reduzido = End_reduzido.new
        end_reduzido.receber_end_reduzido
        novo
    when 3
        load "rodar_programa.rb"
    when 0
        system("clear")
    else
        "Digite uma opção válida"
        load "programa1.rb"
    end
    
#system("clear")