# Ruby公式イメージを使用
FROM ruby:3.2

# 作業ディレクトリの設定
WORKDIR /usr/src/app

# 必要なGemをインストールする
#COPY Gemfile Gemfile.lock ./
#RUN bundle install || true

# アプリケーションコードをコピー
COPY bin ./bin

# デフォルトの実行コマンド
CMD ["ruby", "-v"]