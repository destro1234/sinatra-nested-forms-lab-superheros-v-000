require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team_name = params[:team]["name"]
      @member1_name = params[:team][:heroes][0][:name]
      @member1_power = params[:team][:heroes][0][:power]
      @member1_biography = params[:team][:heroes][0][:biography]
      erb :team
    end


end
