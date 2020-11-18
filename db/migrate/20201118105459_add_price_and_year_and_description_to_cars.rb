class AddPriceAndYearAndDescriptionToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :price, :string
    add_column :cars, :year, :integer
    add_column :cars, :description, :string
  end
end
