class RemoveSkillIdAndAddCategoryIdToNeed < ActiveRecord::Migration
  def self.up
    add_column :needs, :category_id, :integer
    remove_column :needs, :skill_id
  end

  def self.down
    remove_column :needs, :category_id
    add_column :needs, :skill_id, :integer
  end
end

