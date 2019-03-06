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

      @member2_name = params[:team][:heroes][1][:name]
      @member2_power = params[:team][:heroes][1][:power]
      @member2_biography = params[:team][:heroes][1][:biography]

      @member3_name = params[:team][:heroes][2][:name]
      @member3_power = params[:team][:heroes][2][:power]
      @member3_biography = params[:team][:heroes][2][:biography]
      erb :team
    end


end
