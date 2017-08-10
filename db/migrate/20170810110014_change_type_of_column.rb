class ChangeTypeOfColumn < ActiveRecord::Migration[5.0]
  def change
    change_table :doses do |t|
      t.change :description, :text
    end
  end
end


# class ChangeTypeOfColumn < ActiveRecord::Migration
#   def self.up
#     change_table :dose do |t|
#       t.change :description, :text
#     end
#   end
#   def self.down
#     change_table :tablename do |t|
#       t.change :description, :text
#     end
#   end
# end
