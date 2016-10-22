class CreateOptimizableOptimizations < ActiveRecord::Migration[5.0]
  def change
    create_table :optimizable_optimizations do |t|
      t.references :optimizable, polymorphic: true

      t.timestamps
    end
  end
end
