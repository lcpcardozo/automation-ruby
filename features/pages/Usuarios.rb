require 'HTTParty'
require 'httparty/request'
require 'httparty/response/headers'


class Crud

include HTTParty
base_uri 'https://fakerestapi.azurewebsites.net/api/v1'

def create 
    user = Faker::Name.unique.first_name
    senha = Faker::Number.leading_zero_number(digits: 10)
    $body = {username: user, password: senha }.to_json
  
  $headers = {
    'Accept' => 'application/vnd.tasksmanager.v2',
    'Content-Type' => 'application/json'
  }

  self.class.post('/Users', body: $body, headers: $headers) 
end

def get
  self.class.get("/Users/1")
end 

def delete
  self.class.delete("/Users/1")
end

def update
  user = "Cardozo"
  body = {username: user }.to_json
   
  headers = {
     'Accept' => 'application/vnd.tasksmanager.v2',
     'Content-Type' => 'application/json'
   }
  self.class.put("/Users/1", body: body, headers: headers)
end

def getall
  self.class.get("/Users")
end
end 