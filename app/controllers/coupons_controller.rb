class CouponsController < ApplicationController
  before_action :set_coupon, only: [:show]
  def index
    @coupons = Coupon.all
  end

  def show
  end

  def new
    @coupon = Coupon.new    
  end

  def create
    new_coupon = Coupon.create(coupon_params)
    redirect_to coupon_path(new_coupon.id)
  end

  private
  def set_coupon
    @coupon = Coupon.find(params[:id])
  end
  def coupon_params
    params.require(:coupon).permit(:coupon_code,:store)
  end
end
