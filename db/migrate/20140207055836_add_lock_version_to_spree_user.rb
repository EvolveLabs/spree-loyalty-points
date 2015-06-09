class AddLockVersionToSpreeUser < ActiveRecord::Migration
  def change
    add_column Spree.user_class.table_name, :lock_version, :integer, default: 0, null: false unless column_exists?(:spree_users, :lock_version)
  end
end
