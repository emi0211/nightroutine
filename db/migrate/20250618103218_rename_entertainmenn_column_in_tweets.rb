class RenameEntertainmennColumnInTweets < ActiveRecord::Migration[7.0] # Railsのバージョンによって数字は変わります
  def change
    # tweetsテーブルの、"entertainmenn" というカラム名を、"entertainment" に変更する
    rename_column :tweets, :entertainmennt, :entertainment
  end
end