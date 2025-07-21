class LikesController < ApplicationController
  before_action :authenticate_user! # ログインユーザーのみ操作可能

  def create
    # どのツイートに対するいいねかを URL の :tweet_id から取得
    @tweet = Tweet.find(params[:tweet_id])
    # ログイン中のユーザーが、そのツイートに対していいねを作成
    like = current_user.likes.new(tweet_id: @tweet.id)
    like.save
    # 元のツイート一覧ページにリダイレクト
    redirect_to tweets_path
  end

  def destroy
    @tweet = Tweet.find(params[:tweet_id])
    # ログイン中のユーザーがした、そのツイートに対するいいねを探して削除
    like = current_user.likes.find_by(tweet_id: @tweet.id)
    like.destroy
    # 元のツイート一覧ページにリダイレクト
    redirect_to tweets_path
  end
end