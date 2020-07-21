# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = %w(和食 日本料理 寿司 魚介・海鮮料理 そば（蕎麦） うどん うなぎ 焼き鳥 とんかつ 串揚げ 天ぷら お好み焼き もんじゃ焼き しゃぶしゃぶ 沖縄料理 洋食 フレンチ イタリアン スペイン料理 パスタ ピザ ステーキ ハンバーグ ハンバーガー 中華料理 餃子 韓国料理 タイ料理 ラーメン カレー 焼肉 ホルモン 鍋 もつ鍋 居酒屋 バイキング カフェ パン スイーツ ケーキ バー・お酒
)

categories.each do |category|
  Category.create(name: category)
end


# Prefecture.create([
#   {prefecture: "北海道"},
#   {prefecture: "青森"},
#   {prefecture: "岩手"},
#   {prefecture: "宮城"},
#   {prefecture: "秋田"},
#   {prefecture: "山形"},
#   {prefecture: "福島"},
#   {prefecture: "茨城"},
#   {prefecture: "栃木"},
#   {prefecture: "群馬"},
#   {prefecture: "埼玉"},
#   {prefecture: "千葉"},
#   {prefecture: "東京"},
#   {prefecture: "神奈川"},
#   {prefecture: "新潟"},
#   {prefecture: "富山"},
#   {prefecture: "石川"},
#   {prefecture: "福井"},
#   {prefecture: "山梨"},
#   {prefecture: "長野"},
#   {prefecture: "岐阜"},
#   {prefecture: "静岡"},
#   {prefecture: "愛知"},
#   {prefecture: "三重"},
#   {prefecture: "滋賀"},
#   {prefecture: "京都"},
#   {prefecture: "大阪"},
#   {prefecture: "兵庫"},
#   {prefecture: "奈良"},
#   {prefecture: "和歌山"},
#   {prefecture: "鳥取"},
#   {prefecture: "島根"},
#   {prefecture: "岡山"},
#   {prefecture: "広島"},
#   {prefecture: "山口"},
#   {prefecture: "徳島"},
#   {prefecture: "香川"},
#   {prefecture: "愛媛"},
#   {prefecture: "高知"},
#   {prefecture: "福岡"},
#   {prefecture: "佐賀"},
#   {prefecture: "長崎"},
#   {prefecture: "熊本"},
#   {prefecture: "大分"},
#   {prefecture: "宮崎"},
#   {prefecture: "鹿児島"},
#   {prefecture: "沖縄"}
#   ])