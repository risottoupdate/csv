class AddCollumnUser < ActiveRecord::Migration[6.0]
  def change
  	remove_column :users, :都道府県コード, :string
  	remove_column :users, :都道府県名, :string
  	remove_column :users, :年齢5歳階級, :string
  	remove_column :users, :元号, :string
  	remove_column :users, :和暦, :integer
  	remove_column :users, :西暦, :integer
  	remove_column :users, :人口, :integer
  	remove_column :users, :人口_男, :integer
  	remove_column :users, :人口_女, :integer

  	add_column :users, :Address_id, :integer
  	add_column :users, :Address, :string
  	add_column :users, :Age, :integer
  	add_column :users, :Year, :integer
  	add_column :users, :Human, :integer
  	add_column :users, :Human_man, :integer
  	add_column :users, :Human_woman, :integer
  end
end
