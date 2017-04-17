class TshirtsController < ApplicationController
  before_filter :set_tshirt, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @tshirts = Tshirt.all
    respond_with(@tshirts)
  end

  def show
    respond_with(@tshirt)
  end

  def new
    @tshirt = Tshirt.new
    respond_with(@tshirt)
  end

  def edit
  end

  def create
    @tshirt = Tshirt.new(params[:tshirt])
    @tshirt.save
    respond_with(@tshirt)
  end

  def update
    @tshirt.update_attributes(params[:tshirt])
    respond_with(@tshirt)
  end

  def destroy
    @tshirt.destroy
    respond_with(@tshirt)
  end

  private
    def set_tshirt
      @tshirt = Tshirt.find(params[:id])
    end
end
