class AddShortToUrl < ActiveRecord::Migration[5.0]
  def change
    add_column :urls, :short, :string
  end
end
