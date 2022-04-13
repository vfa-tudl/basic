class ClientsController < ApplicationController

    def new
      render "new"
    end


    def create
        @client = Client.new(client_params)
        if @client.save
          redirect_to "/"
        else
          # This line overrides the default rendering behavior, which
          # would have been to render the "create" view.
          render "new"
        end
      end

    def show 
      @client =Client.find(params[:id])
      render json: params   
    end

    def edit
      
      @client = Client.find(params[:id])
    end


    def update
      client = Client.find(params[:id])
      client.update!(client_params)
      redirect_to "/"
    end

    
    def destroy 
        @client = Client.find(params[:id])
        @client.destroy
        @clients =Client.all
        redirect_to "/"    
    end

    def client_params
      params.require(:client).permit(:name, :fullName)
    end
end
