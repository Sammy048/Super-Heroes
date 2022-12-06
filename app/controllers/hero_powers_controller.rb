class HeropowersController < ApplicationController

    def create 
         hero_power = Heropower.create!(hero_power_params)
         render json: hero_power.hero, status: :created, serializer: HeroPowerSerializer 
    end
 
     private
 
     def hero_power_params
         params.permit(:hero_id, :power_id, :strength)
     end
 
end
