class CreateTweets < ActiveRecord::Migration[8.0]
  def change
    create_table :tweets do |t|
      t.string :beauty
      t.string :food
      t.string :study
      t.string :entertainmennt

      t.timestamps
    end
  end
end
