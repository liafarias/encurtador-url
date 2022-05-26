class End_completo
    def receber_end_completo
        puts "Digite a URL que deseja encurtar: "
        url = gets.chomp
        def encurtar_url(url)
            if url.include?("https://") || url.include?("http://") || url.include?(".com") || url.include?(".gov") || url.include?(".org") || url.include?(".br") 
                aleatorio = SecureRandom.hex(2)
                print "A URL encurtada é: "
                puts $url_encurtada =  "encurtador.com/#{aleatorio}"
                def csv_tool url, aleatorio
                    File.open("enderecos.csv", "a") { |f| f.write "#{url}, #{$url_encurtada} \n" }
                end
                csv_tool(url, $url_encurtada)
            else
                puts 'Digite uma URL válida'
            end
        end
            encurtar_url(url)        
    end
end