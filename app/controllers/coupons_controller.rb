class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def new
     @coupon = Coupon.new
    end

    def edit
        @coupon = Coupon.find(params[:id])
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def create
        coupon = Coupon.new
        coupon.coupon_code = params[:coupon][:coupon_code]
        coupon.store = params[:coupon][:store]
        coupon.save
        redirect_to coupon
    end

    def update
        coupon = Coupon.find(params[:id])
        coupon.update(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
        coupon.reload
        redirect_to coupon
    end

end
