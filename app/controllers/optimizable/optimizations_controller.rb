require_dependency "optimizable/application_controller"

module Optimizable
  class OptimizationsController < ApplicationController
    before_action :set_optimization, only: [:show, :edit, :update, :destroy]

    # GET /optimizations
    def index
      @optimizations = Optimization.all
    end

    # GET /optimizations/1
    def show
    end

    # GET /optimizations/new
    def new
      @optimization = Optimization.new
    end

    # GET /optimizations/1/edit
    def edit
    end

    # POST /optimizations
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

    # DELETE /optimizations/1
    def destroy
      @optimization.destroy
      redirect_to optimizations_url, notice: 'Optimization was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_optimization
        @optimization = Optimization.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def optimization_params
        params.require(:optimization).permit(:optimizable_id, :optimizable_type)
      end
  end
end
