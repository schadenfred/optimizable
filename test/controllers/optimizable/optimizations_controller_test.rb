require 'test_helper'

module Optimizable
  class OptimizationsControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @optimization = optimizable_optimizations(:one)
    end

    test "should get index" do
      get optimizations_url
      assert_response :success
    end

    test "should get new" do
      get new_optimization_url
      assert_response :success
    end

    test "should create optimization" do
      assert_difference('Optimization.count') do
        post optimizations_url, params: { optimization: { optimizable_id: @optimization.optimizable_id, optimizable_type: @optimization.optimizable_type } }
      end

      assert_redirected_to optimization_url(Optimization.last)
    end

    test "should show optimization" do
      get optimization_url(@optimization)
      assert_response :success
    end

    test "should get edit" do
      get edit_optimization_url(@optimization)
      assert_response :success
    end

    test "should update optimization" do
      patch optimization_url(@optimization), params: { optimization: { optimizable_id: @optimization.optimizable_id, optimizable_type: @optimization.optimizable_type } }
      assert_redirected_to optimization_url(@optimization)
    end

    test "should destroy optimization" do
      assert_difference('Optimization.count', -1) do
        delete optimization_url(@optimization)
      end

      assert_redirected_to optimizations_url
    end
  end
end
