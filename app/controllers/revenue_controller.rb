class RevenueController < ApplicationController
  def index
    @revenues = Revenue.all.order(:id)

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
    if @revenue.save
        redirect_to(revenue_index_path)
    else
      render('new')
    end
  end

  def edit
    @revenue = Revenue.find(params[:id])
  end

  def update
    @revenue = Revenue.find(params[:id])
    if @revenue.update_attributes(revenue_params)
        redirect_to(revenue_index_path)
    else
      render('new')
    end
  end
  def delete
    @revenue = Revenue.find(params[:id])
  end
  def destroy
    @revenue = Revenue.find(params[:id])
    @revenue.destroy
    redirect_to(revenue_index_path)
  end
  private
   def revenue_params
     params.require(:revenue).permit(:id,:description,:amount,:date,:typology)
   end

end
