class RevenueController < ApplicationController
  def index
    @revenues = Revenue.all

    @total_revenue = @revenues.map{|r| r['amount']}.reduce(0, :+)
  end

  def show
   @revenue = Revenue.find(params[:id])
  end

  def new
    @revenue = Revenue.new
  end

  def create
    @revenue = Revenue.new(revenue_params)
    @revenue.save
    redirect_to @revenue
  end



  private
   def revenue_params
     params.require(:revenue).permit(:id,:description,:amount,:date,:typology)
   end

end
