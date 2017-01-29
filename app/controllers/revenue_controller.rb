class RevenueController < ApplicationController
  def index
    @revenues = Revenue.all
  end
end
