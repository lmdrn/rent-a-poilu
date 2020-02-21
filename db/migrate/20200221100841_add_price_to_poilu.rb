class AddPriceToPoilu < ActiveRecord::Migration[5.2]
  def change
    add_column :poilus, :price, :string
  end
end
