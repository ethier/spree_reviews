class AddVariantIdToSpreeReviews < ActiveRecord::Migration
  def self.up
    add_column :spree_reviews, :variant_id, :integer
    add_index :spree_reviews, :variant_id
  end
  def self.down
    remove_column :spree_reviews, :variant_id
    remove_index :spree_reviews, :variant_id
  end
end
