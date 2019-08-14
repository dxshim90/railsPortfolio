# frozen_string_literal: true

class MyPortfoliosController < ApplicationController

    def index 
        @portfolio_items = MyPortfolio.all
    end

def new
    @portfolio_item = MyPortfolio.new
end

def create
    @portfolio_item = MyPortfolio.new(params.require(:my_portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to my_portfolios_path, notice: 'Blog was successfully created.' }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end


end
