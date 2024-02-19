#Criar Usuario
Dado("a API Criar Usuário Definida") do
    @manter_user = Crud.new
  end
  
  #Criar Usuario
  Quando("é enviada a requisição para criar usuário") do
    $response = @manter_user.create
  end
    
  Então("posso visualizar as informações do usuário") do
    expect(@manter_user.create.code).to eq (200)
    puts $response.body
  end 
  
 #Consultar Usuario
Quando("é enviada a requisição para consultar o usuário") do
  $response = @manter_user.get
end    
                                                            
Então("posso visualizar as informações retornadas") do
  puts @manter_user.get
  expect(@manter_user.get.code).to eq (200)
end  
 
#Atualizar Usuario
Quando("é enviada a requisição para alterar o usuário") do
  $response = @manter_user.update
end                                                                            
                                                                               
Então("posso ver que o usuário foi alterado") do 
   puts @manter_user.update
   expect(@manter_user.update.code).to eq (200)
end            

#Remover Usuario
Quando("é enviada a requisição para remover o usuário") do
  $response = @manter_user.delete
end

Então("posso visualizar a mensagem de sucesso da operação") do
  puts @manter_user.delete
  expect(@manter_user.delete.code).to eq (200)
end

#Consultar Todos Usuarios
Quando("é enviada a requisição para consultar todos os usuários") do
  $response = @manter_user.getall
end    
                                                            
Então("posso visualizar todos os usuarios") do
  puts @manter_user.getall
  expect(@manter_user.getall.code).to eq (200)
end  