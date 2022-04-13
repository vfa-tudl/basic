class RootController < ApplicationController
 
    def about
        puts ="about in server"
        render ="about"
    end
    def index
        @clients = Client.all      
    end
    
   
    


end
