class AddForeignKey < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :reviews, :destinations
  end
end
