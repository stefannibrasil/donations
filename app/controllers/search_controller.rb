class SearchController < ApplicationController
  def new
  end

  def create
    redirect_to search_show_path(donation_local: params[:neighborhood])
  end

  def show
    @donation_locals = DonationLocal.where("neighborhood LIKE ?", "%#{params[:donation_local]}%")
  end
 end
