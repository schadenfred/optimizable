# This migration comes from optimizable (originally 20161022012314)
class CreateOptimizableOptimizations < ActiveRecord::Migration[5.0]
  def change
    create_table :optimizable_optimizations do |t|
      t.references :optimizable, polymorphic: true, index: { name: "by_optimizable" }

      t.string :name
      t.string :content
      t.timestamps
    end
  end
end
