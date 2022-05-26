class End_reduzido
    def receber_end_reduzido
        print "Digite o endereco encurtado: "
        $end_reduzido = gets.chomp

        def csv_parser file_path,
            lines = File.read(file_path).split("///n")
            table = CSV.parse(File.read("enderecos.csv"))
            table.each do |e, f|
                if f.to_s.include?($end_reduzido)
                    puts "\nO endereço completo é #{e}"
                end
            end
        end
        csv_parser('enderecos.csv')
    end   
end
