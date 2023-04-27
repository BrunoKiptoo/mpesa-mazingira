# class MpesaController < ApplicationController
#     def create
#         mpesa_express(1,params[:phone])
#         render json: {message: "hit"}
#     end

    
# end

require_relative './mpesa/mpesa_express.rb'

class MpesaController < ApplicationController
  def create
    mpesa_express(params[:amount], params[:phone])
    render json: { message: "hit" }
  end
end


  