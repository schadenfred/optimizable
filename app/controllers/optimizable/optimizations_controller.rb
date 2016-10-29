require_dependency "optimizable/application_controller"

module Optimizable
  class OptimizationsController < ApplicationController
    before_action :set_optimization, only: [:show, :edit, :update, :destroy]

    def index
      @optimizations = Optimization.all
    end

    def show
    end

    def new
      @optimization = Optimization.new
    end

    def edit
    end

    def create
      @optimization = Optimization.new(optimization_params)

      if @optimization.save
        redirect_to @optimization, notice: 'Optimization was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /optimizations/1
    def update
      if @optimization.update(optimization_params)
        redirect_to @optimization, notice: 'Optimization was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @optimization.destroy
      redirect_to optimizations_url, notice: 'Optimization was successfully destroyed.'
    end

    private
      def set_optimization

        @optimization = Optimization.find(params[:id])
      end

      def optimization_params
        params.require(:optimization).permit(:name, :content, :optimizable_id, :optimizable_type)
      end
  end
end
