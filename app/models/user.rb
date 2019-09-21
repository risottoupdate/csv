class User < ApplicationRecord
	# CSVデータのパスを引数として受け取り、インポート処理を実行
  def self.import

  	# CSVを格納しているディレクトリをpathに保存
  	path = File.join Rails.root, "db/csv_data/human.csv"

    puts "path: #{path}"
  	list = []

  	CSV.foreach(path, headers: true) do |row|
	  	list << {
	  		Address_id: row["Address_id"],
	  		Address: row["Address"],
	  		Age: row["Age"],
	  		Year: row["Year"],
	  		Human: row["Human"],
	  		Human_man: row["Human_man"],
	  		Human_woman: row["Human_woman"]
	  	}
	  end
	  User.create(list)
  end
end
