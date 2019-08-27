class CombosController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @combos = Combo.where(food_type: params[:food_type])
    query = params.dig(:search, :query)
      if query.present?
        @restaurants_geocode = Restaurant.near(query, 6).where(food_type: params[:food_type])
      end
  end

  # def create
  #   @combo = Combo.new(combo_params)
  #   if @combo.save
  #     redirect_to profile_path
  #   end
  # end

  # private

  # def combo_params
  #   params.require(:combo).permit(:name, :description, :food_type, :movie, :name_from_sponsor)
  # end
end
