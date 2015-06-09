class AddLoyaltyPointsBalanceToSpreeUser < ActiveRecord::Migration
  def change
    add_column Spree.user_class.table_name, :loyalty_points_balance, :integer, default: 0, null: false
  end
end
