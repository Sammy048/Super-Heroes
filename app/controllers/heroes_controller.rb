class HeroesController < ApplicationController

    def index
     heroes=Hero.all
     render json:heroes
    end

    def show
     hero = Hero.find(params[:id])
     render json :hero, status: :ok
    end

 

end  