require 'sinatra'
require 'sinatra/reloader' # TODO: use only in development

require_relative 'greetings'

get '/users' do
  users.to_json
end

get '/user/greetings/:user_id' do
  Greetings.new(name: provided_user[:name]).call
end

private

def provided_user
  user_id = params['user_id'].to_i

  users.find { |user| user[:id] == user_id } || {}
end

def users
  [
    { id: 1, name: 'Wallace Cruz', age: 21 },
    { id: 2, name: 'Shakira Cruz', age: 20 },
    { id: 3, name: 'Pandora Cruz', age: 20 }
  ]
end
