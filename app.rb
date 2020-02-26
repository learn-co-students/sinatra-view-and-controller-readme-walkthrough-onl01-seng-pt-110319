require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    org_str = params["string"]
    @rev_str = org_str.reverse
    erb :reversed
  end

  get '/friends' do
    erb :reversed
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
  end
  
end
