class CreateScoreWeights < ActiveRecord::Migration
  def change
    create_table :score_weights do |t|
      t.string :name
      t.text :description
      t.integer :bronze_weight
      t.integer :silver_weight
      t.integer :gold_weight

      t.timestamps
    end
  end
end
