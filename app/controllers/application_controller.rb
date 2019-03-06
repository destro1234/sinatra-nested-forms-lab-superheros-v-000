require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team_name = params[:team]["name"]
      @team_motto = params[:team]["motto"]
      @member1_name = params[:team][:heroes][0][:name]
      @member1_power = params[:team][:heroes][0][:power]
      @member1_bio = params[:team][:heroes][0][:bio]

      @member2_name = params[:team][:heroes][1][:name]
      @member2_power = params[:team][:heroes][1][:power]
      @member2_bio = params[:team][:heroes][1][:bio]

      @member3_name = params[:team][:heroes][2][:name]
      @member3_power = params[:team][:heroes][2][:power]
      @member3_bio = params[:team][:heroes][2][:bio]
      erb :team
    end


end
