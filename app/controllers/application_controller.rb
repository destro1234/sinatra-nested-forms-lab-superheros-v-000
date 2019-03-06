require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team_name = params[:team]["name"]
      @member1_name = params[:team][:heroes][0][:name]
      erb :team
    end


end
