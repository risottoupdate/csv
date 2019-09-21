class User < ApplicationRecord
	# CSVデータのパスを引数として受け取り、インポート処理を実行
  def self.import(path)
  	list = []
  	CSV.foreach(path, headers: true) do |row|
	  	list << {
	  		name: row["name"],
	  		age: row["age"],
	  		address: row["address"]
	  	}
	  end
	  User.create(list)
  end
end
