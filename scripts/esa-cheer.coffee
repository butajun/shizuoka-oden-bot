module.exports = (robot) ->
  cheer = [
    "自分を否定するな！認めることでお前は強くなるのだ(ぬらりひょんの孫, 牛鬼)",
    "何か力になれる事があれば、いつでも言って下さいね(バッカーノ!, ラック・ガンドール)",
    "気にしないで下さい。気になっても、気にしないフリをして下さい(バッカーノ!, ラック・ガンドール)",
    "胸を張って、最後に自分自身を信じるの！でもねでもね、その波を引き起こすにはね、周りの人が一人でも『いい人だ』って思う事が必要なの！だからね、ジャグジーはいい事をしたっってことなの！私達が知ってるの！だから私達が波を起こしてあげるの！(バッカーノ!, ミリア・ハーヴェント)",
    "君はね、君や周りの人間が思っているよりも遥かに優秀だよ(バッカーノ!, ヒューイ・ラフォレット)",
    "誰も許してくれなかったらよく解らないけど俺が許してやるって！(エルマー・C・アルバトロス, バッカーノ!)",
    "あなた達の行き先に、いつでも幸福の女神が微笑んでくれるよう祈っています　（アルヴァニスタ王妃）(TOPキャラ, テイルズ　オブ　ファンタジア, テイルズシリーズ)",
    "声だせ！最後まで！ 中の選手が諦めてねーんだぞ 黙って見ててどーすんだ(小金井慎二, 黒子のバスケ)",
    "行ってしまったお前にオレが言える事はたった一言だけだ。絶対に生きて帰って来い！！！(NARUTO, うみのイルカ)",
    "物語の第２部ってのはだいたいが駄作になる。 第1部が自来也先生、第2部が俺だ。ナルト、お前が第3部を最高傑作にしてくれ！(NARUTO, ペイン)",
    "厳しいことを言うのは、あなたがそれを乗り越えてくれると信じているからよ(テイルズ　オブ　シンフォニア, テイルズシリーズ, リフィル・セイジ)",
    "ルージュはいつも一生懸命で、どんなことだってチャレンジして、何にだって全力でぶつかって、すっごく頑張ってるの！　だから私たちはいつだってそんなルージュを応援するよ。(Yes!プリキュア5, プリキュアシリーズGoGo!, 夢原のぞみ)",
    "でもやってみれば何かしらわかることがあるよ！(ハイキュー!!, 澤村 大地)",
    "でもね、勿論リスクもあるわ。アナタがアナタのやりたいようにやれば、それを良く思わないひともいる。悲しく思うひともいる。(×××HoLic, 壱原侑子)",
    "お母さんは苦手だったけど...勉強や忍術をしっかりやり なさい...！ ただし......得意...不得意が誰しもあるものだから...あまりうまく...い かなくても...落ち込まないでいいからね...(NARUTO, うずまきシクナ)",
    "私、りんちゃん見てると思うんだ。何でも挑戦するりんちゃんのために、何かしてあげたいなぁ、応援したいなぁって。(Yes!プリキュア5, プリキュアシリーズGoGo!, 夢原のぞみ)",
    "努力を続けてきたお前の手術は必ず成功する！ きっと天国の未来をよびよせる。 もし、一兆分の一失敗するようなことがあったら・・・オレが一緒に死んでやる！(NARUTO, マイト・ガイ)",
    "俺には俺のやるべきことがある。お前は自分が何をしたか、何をすべきか、自分の頭で考えろ　（アッシュ）(TOAキャラ, テイルズ オブ　ジ　アビス, テイルズシリーズ)",
    "皆は強いです 烏野は強いです “飛べない烏”がまた飛ぶところ会場中に見せてあげましょう!!”見よっ” “古兵烏野の復活だ!!”と!!!(ハイキュー!!, 武田一鉄)",
    "勝っても負けてもケガだけはするんじゃないよ(はじめの一歩, 幕之内寛子)",
    "これから新しい世界へ飛び込もうって人が下を向いてちゃいけないわ いつだって上を向いて前だけを見て がんばって!!(はじめの一歩, 幕之内寛子)",
    "そりゃもう好き勝手やってこんな顔で帰ってこられたら 親の気も知らないでって言いたくなるけど いつもいじめられて帰ってきたこのコが自分で好きなコト見つけて一生懸命になって そんな姿見せられちゃうと文句言えなくなっちゃうのよ(はじめの一歩, 幕之内寛子)",
    "今度会う時は東日本新人王トーナメントの決勝だぜ! それ以外のとこじゃまってねえからな!!(はじめの一歩, 宮田一郎)",
    "...黒子　応援ってのは　しみじみ元気でんなあ(火神大我, 黒子のバスケ)",
    "みんなに励ましてもらったし、次は攻撃力、倍増しで行くよ！(カロル・カペル, テイルズ オブ ヴェスペリア)",
    "まさかこれほどのウデとはの　まったくあっぱれじゃよ わしはうれしいぞよ　ぞくぞくするわい 明るい道を歩んで大物になれよ！（ジャッキー・チュン）(ドラゴンボール, ドラゴンボールキャラ)",
    "セーラが言うてたんや、去年のインハイで負けた帰りの飛行機でな 窓から地元の街明かりがぷわぁっと見えてな、こん中に一人くらいは自分を応援してくれた人がおったんちゃうか、そう思うたら申し訳なくて、悲しゅうて、悔しゅうて、あかんかったて　（清水谷竜華）(咲-Saki-, 咲キャラ)",
    "自信があるのでしょう？ やってみせなさい。そして必ず帰ってきて。約束を違えることは許しません(ガンダムシリーズ, ミネバ・ラオ・ザビ, 機動戦士ガンダムUC)",
    "甘ったれるんじゃない！！気合だ！！気合で登ってみろ(家庭教師ヒットマンREBORN!, 笹川了平)",
    "お前が凹ましたい相手その２が目の前だ 思いっきりでいいぞ(岩泉一)(ハイキュー!!, ハイキューキャラ)",
    "前を向いて下さい　隊長!!! あなたが進まねばどうします!!!(ONE PIECE（ワンピース）, カブ)",
    "追い詰められた者に救いの手を差しのべるのが、私の役目なのです。太陽と北風のお話をご存知か？...現実は過酷ですから、人は太陽に惹かれるのです(∀ガンダム, ガンダムシリーズ, グエン・サード・ラインフォード)",
    "応援したい人がいるそうです。 その人に頑張ってもらいたいから、まずは自分が頑張るそうです(チャット, テイルズ オブ エターニア, テイルズシリーズ)",
    "あっ...そうか、私勘違いしていたかもね 応援してくれる人たちとか、チームメイトとか、大事なことだけど... この場は、まず自分...私自身が楽しまなきゃ始まらないわ！！(咲-Saki-, 竹井久)",
    "血ヘド吐くまで走り込め。血便出すまで素振りしろ。今よか ちったァ楽になんよ...ヒーロー。(ピンポン, 佐久間学（アクマ）)",
    "わからないところは教えてあげるから、たまには自分で解きなさいよ(らき☆すた, 柊かがみ)",
    "あなたの夢はあなたの物ですそれを歌ってください、夢を他人ひとに使われてはいけません(ガンダムシリーズ, ラクス・クライン, 機動戦士ガンダムSEED DESTINY)",
    "あとは君次第だ　状況につぶされるな(ガンダムシリーズ, ブライト・ノア, 機動戦士ガンダムUC)",
    "気にすることなかったんだぜ。俺たちの映画を地でいったんだ、おまえは。だから刑事になった。嘘から出たまことじゃないか。大事にしろよ。（あいつ）(パプリカ, パプリカキャラ)",
    "絶望を退ける勇気を持て(ガンダムシリーズ, ブライト・ノア, 機動戦士ガンダムUC)",
    "今の１点は奇跡じゃない　獲られたんだアイツに！点を！！獲られたんだよ！！(ハイキュー!!, 影山 飛雄)",
    "それよりお前は自分のやるべきことをやれ 信じてんだからよ おめーらも応援頼むぜ！！ うつむいてても勝機はこねーぞ(日向順平, 黒子のバスケ)",
    "応援がないことより、ぬるい麻雀打たれる方が嫌だわ(咲-Saki-, 竹井久)",
    "過ちを気に病むことはない。ただ認めて次の糧にすればいい。それが大人の特権だ(ガンダムシリーズ, フル・フロンタル, 機動戦士ガンダムUC)",
    "負けたくねえ。でも、ミスもしたくねえ。どうすれば...どうすれば...くっ/ナオキ君!　自分を信じるんだ!!(カードファイト!!ヴァンガード, 先導アイチ)",
    "戻れ　すぐ戻れ　十分な助走距離の確保を　全力のジャンプを　何回でも何回でも何回でも!!!　思考を止めるな　足を止めるな　気持ちを切らせばボールが落ちるぞ(ハイキュー!!, 東峰旭)",
    "そんな安っぽい、一人よがりな正義感で何が出来るか！(ウズミ・ナラ・アスハ, ガンダムシリーズ, 機動戦士ガンダムSEED)",
    "どれだけ言ってもどーせお前は無茶しちまう... 無理矢理ひっこめても　どーせリコ泣かせて出てきちまう 結局こうなるなら　もう止めねーよ 最後ぐれー　思う存分ムチャしてこい！(日向順平, 黒子のバスケ)",
    "だアホ！！全員声出てねーよ！！ 疲れてんのは相手も一緒だ！！ おとなしくなる前にもっと マシな言いワケ考えろ！！ どいつもこいつも草食男子かバカヤロー(日向順平, 黒子のバスケ)",
    "あまったれんな！自分で選んだんだろ！自分で望んでニュータイプになったんだろ！死ねば全部チャラになると思ったら大間違いだからな。そんなやり方、俺は絶対認めないぞ！(ガロード・ラン, ガンダムシリーズ, 機動新世紀ガンダムX)",
    "オレは何も出来ねぇ。出来ねぇけど、待ってるから。...がんばれよ(テイルズ オブ エターニア, テイルズシリーズ, リッド・ハーシェル)",
    "応援したいヤツがいるんだ。そいつに頑張ってもらいたいから、まずはオレが頑張るしかねえ(テイルズ オブ エターニア, テイルズシリーズ, リッド・ハーシェル)",
    "やらなきゃやれるんだっ！　これは　抗うことの出来ぬ真理　現実！(カイジシリーズ, 伊藤カイジ, 賭博黙示録カイジ)",
    "この手はなんの為についている？　リスクを恐れ動かないなんて言うのは　年金と預金が頼りの老人のすることだぜ　年老いた者にとってその手はこれまでの人生で築いた「何か」を守る手　つまり　話さないための手だ　しかし　持たざる者　若者がそれじゃ話にならない　若者は掴みにいかなきゃダメだっ　出なきゃ道は開けないっ(カイジシリーズ, 賭博黙示録カイジ, 遠藤勇次)",
    "甘い話に浮かれるなっ　待てっ　おまえにふさわしい本当のチャンスが　あと少しでかならず来る　かならず来るから待つんだ　その時まで　／ククク　ふざけたことを　来るか　そんなもの　無責任になんの確証もなくよく言うぜ　なんだその「待つ」っていうのは　一体「何」を「いつまで」待つつもりだ（カイジ／遠藤）(カイジシリーズ, 伊藤カイジ, 賭博黙示録カイジ, 遠藤勇次)",
    "耐えることなくして勝利はないんだ　今は耐えろ　そして信じるんだ(カイジシリーズ, 伊藤カイジ, 賭博黙示録カイジ)",
    "泣くな　見苦しい　それから　あまり人を舐めるな＞あんな姿を見せつけられて信じろもくそもねえ　おまえは　もし勝っていたら　間違いなくオレたちを切ったろう　それだけは疑いようもねえのさ(カイジシリーズ, 伊藤カイジ, 賭博黙示録カイジ)",
    "勝てっカイジ　勝って大金を掴め！人生を変えろっ！(カイジシリーズ, 賭博黙示録カイジ, 遠藤勇次)",
    "わたしは「誓う」と言った　わたしは一度口にして誓ったことは必ず実行して来た「報復」は決してしない／だから　それを僕に「信じさせて」みろ！　あんたが「いい人」だという事を　力と才能のある「うそつき」ではなく　「正しい道」を行く人間であるということを　今！ ここで僕を説得してみろッ！　「誓い」を守る正しい人間であることを僕に説得できたら喜んで「回転」は止めてやるッ！＞あんたが「いい人」だという言を信じられたらどんなにすばらしいだろう　僕にあんたを信じさせてくれ（ヴァレンタイン／ジョニィ）(ジョジョ　第7部　スティール・ボール・ラン, ジョジョの奇妙な冒険, ジョニィ（ジョーキッド）・ジョースター, ファニー・ヴァレンタイン大統領)",
    "おめーらしくねーなジョニィいつになくあきらめるなんてよォ(ジャイロ・ツェペリ, ジョジョ　第7部　スティール・ボール・ラン, ジョジョの奇妙な冒険)",
    "誓いを立てて結婚したなら　夫のために守り続けろ！(ジャイロ・ツェペリ, ジョジョ　第7部　スティール・ボール・ラン, ジョジョの奇妙な冒険)",
    "人には「使命」がある　肉体的な小さき「命」なぞ超越した　大いなる「使命」が！（ブラックモア）(ジョジョ　第7部　スティール・ボール・ラン, ジョジョの奇妙な冒険, ジョジョキャラ)",
    "これからおめーにできる事は「覚悟」それだけだぜ！(ジャイロ・ツェペリ, ジョジョ　第7部　スティール・ボール・ラン, ジョジョの奇妙な冒険)",
    "どうする？　決めるのは君たちだ(ジョジョ　第7部　スティール・ボール・ラン, ジョジョの奇妙な冒険, リンゴォ・ロードアゲイン)",
    "「根性」見せろよヴァルキリー　俺らはスネかじりの「根性なし」って言われたんだぜ　そうなのか？オメーはそうじゃあねーよな(ジャイロ・ツェペリ, ジョジョ　第7部　スティール・ボール・ラン, ジョジョの奇妙な冒険)",
    "おまえならやれる！だから言うッ！（処刑人の男）(ジョジョ　第7部　スティール・ボール・ラン, ジョジョの奇妙な冒険, ジョジョキャラ)",
    "何をしておる　自ら膝を付くなど勝負を捨てた者のする事ぞ—立て、立って見せい(ガンダムシリーズ, 東方不敗(マスター・アジア), 機動武闘伝Ｇガンダム)",
    "殺すのではなく生かす教育 これからも...お互いの理想の教育を貫きましょう(暗殺教室, 殺せんせー)",
    "おまえはりっぱにやったのだ。そしておまえの真実に「向かおうとする意志」はあとの者たちが感じ取ってくれているさ。大切なのはそこなんだからな（アバッキオの相棒）(ジョジョ　第5部　黄金の風, ジョジョの奇妙な冒険, ジョジョキャラ)",
    "くだらない男さなんだって途中で終わっちまう。いつだって途中でだめになっちまう。／そんな事はないよ。＞おまえはりっぱにやってるじゃあないか（アバッキオ／アバッキオの相棒）(ジョジョ　第5部　黄金の風, ジョジョの奇妙な冒険, ジョジョキャラ, レオーネ・アバッキオ)",
    "何かを始める時というのは楽しんでやらなくちゃあいけない。そうだろ？君がイヤなことは、すごくよくないことだ！重要なのは君の好みだ。（メローネ）(ジョジョ　第5部　黄金の風, ジョジョの奇妙な冒険, ジョジョキャラ)",
    "ナランチャもオレたちも覚悟の上でボスの命令に従っている。君は自分の安全だけを考えるんだ。それがオレたちの仕事だ。(ジョジョ　第5部　黄金の風, ジョジョの奇妙な冒険, ブローノ・ブチャラティ)",
    "「成長しろ」！ペッシ「成長」しなきゃあ、オレたちは「栄光」をつかめねぇ(ジョジョ　第5部　黄金の風, ジョジョの奇妙な冒険, プロシュート兄貴)",
    "おまえの「忠実さ」とその「根性」は尊敬に値するぜ(ジョジョ　第5部　黄金の風, ジョジョの奇妙な冒険, ジョジョキャラ, ホルマジオ)",
    "自分で考えろ　いまの君は、目の前の困難から逃げようとしているだけだ(ガンダムシリーズ, ダグザ・マックール, 機動戦士ガンダムUC)",
    "君がしてくれた事は決して忘れない（ギャングの男）(ジョジョ　第5部　黄金の風, ジョジョの奇妙な冒険, ジョジョキャラ)",
    "歯車には歯車の意地がある。・・・お前もお前の役割を果たせ(ガンダムシリーズ, ダグザ・マックール, 機動戦士ガンダムUC)",
    "勝敗なんざ関係ねェ 最後の最後まで立って戦え!! 燃えて燃えつきるまで戦って　その生き様　俺達の目に焼きつけてみろ!!(近藤勲, 銀魂)",
    "君が歌い続ける限り　君のファンはどこにもいなくなったりしないよ(志村新八, 銀魂)",
    "己のゆく道は誰にも頼らず己で決める 弱音なんか吐いたら承知しないんだから 俺達はいつも見守っているぞ ソウワタシ達ハ あなた達の人生のインストラクターなのだから... （銀時/桂/妙/マダオ）(坂田銀時, 志村妙, 桂小太郎, 銀魂, 長谷川泰三)",
    "じ...自分　...強くなるっス き...きっと兄貴より...副長より強くなってみせるっス もう二度と立ち止まらないように　早く...みんなと一緒に同じ道を歩めるように... だ...だから副長も強くなって下さい(佐々木鉄之助, 銀魂)",
    "自分の頭でちゃんと考えた上で「腹減った～」と言わせてるなら　まだいいよ でも君は何となく色んな所から　っぽいものを借り　っぽい漫画を仕上げただけだろ 君は誰かの漫画を表現するために漫画を描いてるの？ 自分自身を表現するために　ダンスでも漫才でもない漫画を選んだんだろ だったらこの一枚に全部ブチこまなきゃダメだ 誰のものでもない自分の人生の全てを(本田･J･ｳﾞｧﾝｶﾞｰﾄﾞ, 銀魂)",
    "オレはお前らが大嫌いだ　なのになぜ・・・負けちまえって気にならないんだ　　それはお前らが心底勝ちたがってることは知ってるからだ・・・(スラムダンク, 金平監督)",
    "歴史に名を刻め～！お前等！(スラムダンク, 堀田徳男)",
    "よそ見すんな相手を見ろ!!腰を落とせ!!足を動かせ!!相手の目を見ろ!!(スラムダンク, 流川楓)",
    "こんな私を応援してくれる人がいる。 だからその人たちのために、自分のために、私は歌う!(キュアソード, ドキドキ!プリキュア, プリキュアシリーズ)",
    "あなたに舞台が回ってきただけさ。シナリオを書き換えたわけじゃない(アムロ・レイ, ガンダムシリーズ, 機動戦士Ζガンダム)",
    "迷いは自分を殺すことになる。ここは戦場だぞ！(ガンダムシリーズ, クワトロ・バジーナ（シャア・アズナブル）, 機動戦士Ζガンダム)",
    "大丈夫、あなたなら出来るわ。(ガンダムシリーズ, セイラ・マス, 機動戦士ガンダム)",
    "弱気は禁物でしょ？(ガンダムシリーズ, セイラ・マス, 機動戦士ガンダム)",
    "前線では何がおきるかわからんからな　知恵と工夫できりぬけてくれ！(ガンダムシリーズ, ブライト・ノア, 機動戦士ガンダム)",
    "決戦はこれからである！！(ガンダムシリーズ, ドズル・ザビ, 機動戦士ガンダム)",
    "頑張る人のために頑張るって、一番の応援かもね(ハピネスチャージプリキュア!, プリキュアシリーズ, 白雪ひめ)",
    "ずっとずっと主人公になりたかったんだろ！絵本みてえに映画みてえに、命を賭けてたった一人の女の子を守る、リア充になりたかったんだろ！だたらそれは全然終わってねえ！！　始まってすらいねえ！！ちっとぐらい長いプロローグで絶望してんじゃねえよ！！(とあるシリーズ, とある科学の超電磁砲s, 垣根帝督)",
    "――手を伸ばせば届くんだ。いい加減に始めようぜ、リア充生活！(とあるシリーズ, とある科学の超電磁砲s, 垣根帝督)",
    "目の前にある条件をリスト化し、その壁を取り払え(とあるシリーズ, とある魔術の禁書目録, 一方通行（アクセラレータ）)",
    "涙を拭って前を見ろ。胸を張って誇りに思え(とあるシリーズ, とある魔術の禁書目録, 上条当麻)",
    "生きてるんでしょっ！命があるんでしょっ！あんたたちにも！(とあるシリーズ, とある科学の超電磁砲, 御坂美琴（レールガン）)",
    "いつまでそうやって泣いているつもりですの。他にもっとやるべき事があるでしょう...(とあるシリーズ, とある科学の超電磁砲, 白井黒子)",
    "これはお前を生き延びさせるための戦いだ。勝手に死ぬんじゃないぞ(とあるシリーズ, とある魔術の禁書目録Ⅱ, マタイ＝リース)",
    "良いか。これはお前を生き延びさせるための戦いだ。だから、戦争が終わるその時まで、絶対に死ぬんじゃない(とあるシリーズ, とある魔術の禁書目録Ⅱ, マタイ＝リース)",
    "全員、必ず生きてここへ戻ってくるぞ。 ここで死にたくないとか、ここで死んでも主義を貫くとか、 そういう風に考えてるヤツは素直に降りて良い。 一切の妥協はなしだ、我らが戦場に向かうからには全員で帰る。 分かったか？(とあるシリーズ, とある魔術の禁書目録Ⅱ, 建宮斎字)",
    "ちゃんと見ていてくれる人がいるから頑張れる。(地獄少女, 恩田麻紀)",
    "こんな時、あいつはこう言うのさ 迷った時はドカンとぶつかって行け!(バトルスピリッツ, 一番星のレイ, 最強銀河 究極ゼロ バトルスピリッツ, 流れ星のキリガ)",
    "真実はその腕で掴め(バトルスピリッツ, バトルスピリッツソードアイズ激闘伝, 白夜王ヤイバ)",
    "いつまでも逃げられるものか。カードバトラーなら運命に立ち向かえ！(バトルスピリッツ, バトルスピリッツ覇王, 棚志テガマル)",
    "一気にやるべし!　乗れる時に決める! 何もしないで後悔するより、飛び込め!!(ツルギ・タテワキ, バトルスピリッツ, バトルスピリッツソードアイズ激闘伝)",
    "夢を見て、夢があって、夢を実現できる世界。 やりたいことが生まれて、それを実現できることを応援できる世界。(ツルギ・タテワキ, バトルスピリッツ, バトルスピリッツソードアイズ激闘伝)",
    "勝てよ馬神ダン！勝って引き金を引いてこい！でもって帰ってきたら あの娘を抱き締めてやれ、ぎゅーってな！(ゾルダー・グレイヴ, バトルスピリッツ, バトルスピリッツブレイヴ)",
    "恐れずに立ち向かうその心。 この先必要になる。決して忘れるな。(聖闘士星矢, 聖闘士星矢Ω, 貴鬼)",
    "ユナ...まだ光はあります。あなたの心の中に。/ 私の心の...?　そうだ。希望を捨てない限り、光は...光はここに、ある!　（沙織/ユナ）(ユナ, 聖闘士星矢, 聖闘士星矢Ω)",
    "seiya彼らをここで死なせる訳には行かない。 若き聖闘士たちはこの俺が守る!　(星矢, 聖闘士星矢, 聖闘士星矢Ω)",
    "ほこりたいんだよォ?っ　キン肉マンとの戦いを?っ　わたしは全力で戦って負けた！そうなんだ、胸をはってほこりたいんだよォ?っ！おまえがそんな状態では、わたしの敗北はムダではないか！！神がかりの運の強さにだけはたよらないでくれ?！！(キン肉マン, ラーメンマン)",
    "アレもコレも考え過ぎるってトコあんじゃね？　頼むからあんま溜め込むなよ？　それこそ「今」が勿体ねぇし　...心配なんだよ(フルーツバスケット, 魚谷ありさ)",
    "魔法で作ったんじゃ何にもならないからねぇ。（銭婆）(ジブリシリーズ, 千と千尋の神隠し)",
    "自分で行って、運を試しな。（釜爺）(ジブリシリーズ, 千と千尋の神隠し)",
    "産まれてくる子が　一人の個人（にんげん）なんだって事を　理解（わか）ってる今日子は　大丈夫だよ　同じ人間同士　自分がしてもらって嬉しかった事　自分がされて悲しかった事を　忘れないでいてあげよう(フルーツバスケット, 本田勝也)",
    "地球で死んじゃうようなひとならいらないよ、木星でも死なないひとがほしいんだから‥(ウェルナー・ロックスミス, プラネテス)",
    "今あんたの心はね、でっかいものの見方を覚えたばっかりなのよ(サリー・シルバーストーン, プラネテス)",
    "暖かい所に引き篭もって居ても、何の解決にもなりゃしないんだ(フィー・カーマイケル, プラネテス)",
    "光があたる場所まではやく駆け上がって。あなたが元の姿を取り戻せる場所まで(フィー・カーマイケル, プラネテス)",
    "忘れちまえ重力なんて。 ありゃ世界をせまくする力だ(プラネテス, 星野 八郎太（ハチマキ）)",
    "最後に人を助けるのは神じゃない、人なんだ。できるよ、貴方なら、できる(ファビオラ・イグレシアス, ブラックラグーン)",
    "タラワだろうがアラモだろうが守ってやる自信はある!でもな、くたばりたくてたまらねえ奴はどんなにしたって守りようがねえんだよ、このアンポンタン!(ブラックラグーン, レヴィ（レヴェッカ・リー）)",
    "君は君の信じる物のために戦え、君の胸の中にあるもののためだけに戦え(キャプテンハーロック, 宇宙海賊キャプテンハーロック)",
    "俺はおまえの胸の中に燃えていた火をよく知っている............ 俺の胸の中に燃える火と同じだ。俺は決してこの火を消さない。この火は半分　おまえのものだからな！(キャプテンハーロック, 宇宙海賊キャプテンハーロック)",
    "例え父と志は違っても、それを乗り越えて若者が未来を作るのだ。親から子へ。子からまたその子へ血は流れ、永遠に続いていく。 それが本当の永遠の命だと、俺は信じる(さよなら銀河鉄道１００１, キャプテンハーロック)",
    "己を縛るものと闘え！！(キャプテンハーロック, 映画キャプテンハーロック（実写）)",
    "あいつは人の下で働くような男じゃない。勝手にやらせたほうが，力を発揮するだろうさ(キャプテンハーロック, コスモウォーリアー零)",
    "才能を持つ事がゴールじゃないよ。才能があろうとなかろうとさ、それよりもっと大事な事があるはずでしょ? ...自分自身を信じてあげる事だよ。それができなかったら...いくら才能があっても自分に胸なんか張れないよ?(スーパーダンガンロンパ２ さよなら絶望学園, ダンガンロンパ, 七海千秋)",
    "信じれば夢は叶うって信じる事は夢を叶える第一歩だと思うっす(スーパーダンガンロンパ２ さよなら絶望学園, ダンガンロンパ, 澪田唯吹)",
    "お前らは甘えているだけだ。自己満足の世界に逃げているだけだ。戦い、競争、比べ合い...そこから逃げているだけだ(ダンガンロンパ, ダンガンロンパ 希望の学園と絶望の高校生, 十神白夜)",
    "自分自身こそが、 自分の最大の応援者なんでちゅから！そうやって自分を好きになれば... その”愛”は一生自分を応援し続けてくれまちゅよ。(スーパーダンガンロンパ２ さよなら絶望学園, ダンガンロンパ, モノミウサミ)",
    "他人に認められなくても、 自分に胸を張れる自分になればいいんでちゅ(スーパーダンガンロンパ２ さよなら絶望学園, ダンガンロンパ, モノミウサミ)",
    "俺たちは代表選手なんだ！　みんなの期待を背負ってる。だから恥ずかしくない試合をして、そして勝たなきゃ(イナズマイレブン, イナズマイレブンGOギャラクシー, 松風天馬)",
    "まだまだ未熟な選手たちですが、今日の皆さんの心からの応援を忘れず、日々進歩を遂げてくれるものと思います。サポーターの応援には選手たちを力付ける絶対的な力があります。イナズマジャパンをこれからも見守り続けてください(イナズマイレブン, イナズマイレブンGOギャラクシー, 黒岩流星)",
    "フ...これが応援する言葉の力だ。 サポーターの...そして、仲間のな(イナズマイレブン, イナズマイレブンGOギャラクシー, 黒岩流星)",
    "世界の注目が集まっているのよ。 日本代表として、恥ずかしくないプレーを見せなさい(イナズマイレブン, イナズマイレブンGOギャラクシー, 野咲さくら母)",
    "何があっても諦めない、それがイナズマジャパンのサッカーじゃなかったんですか！？だから予選大会にも勝てて、ナイツオブクイーンにも勝てたんじゃないんですか！？お願い、もう一度立ちあがって！そして戦って！(イナズマイレブン, 久遠冬花)",
    "俺達の夢消さないで下さい。飛鷹さんが活躍するのが俺達の夢なんです。羽ばたいて下さい飛鷹さん！世界に！(イナズマイレブン, スズメ)",
    "調理に集中しろ小松! 食材が暴れたくらいで料理人がうろたえるな!!(トリコ, トリコ)",
    "小松 これはジョーダンでも何でもねぇ オレはお前なら優勝だって本気で狙えると思ってる... お前の料理人としての才能はザウスにだってセツ婆にだって負けてねぇ ブランチにもだ！ なっちまいな！！”スーパーコック”によ！！(トリコ, トリコ)",
    "自業自得だが小僧、とりあえず踏ん張りな。 いいか!　勝手に死ぬんじゃないぞ! 勝手に死んだら殺すからな!!(ゼブラ, トリコ)",
    "俺だって　背伸びせず対等の目線で　必要として　必要とされたい　眠ってるだけでも　もらうだけでもなく　あげたい　俺にしかあげられないモノを(フルーツバスケット, 草摩由希)",
    "守りたい　守りたいです　皆さんが歩んでいく道を　できる限りの　力で(フルーツバスケット, 本田透)",
    "長く擦れ違いあっていて　遠まわりをして　ようやく触れ合うことができたのかも　しれないね(フルーツバスケット, 本田透)",
    "応援してくれる人がいるとすっげー嬉しいよな。だから、もっともっと頑張んねーとな。(うたの☆プリンスさまっ♪マジLOVE2000%, 来栖翔)",
    "七海はすごく前向きで、まっすぐで、一生懸命でさ。でも、そういうことに自分じゃ気づいてないみたいで...だから、応援したくなるっていうか...。(うたの☆プリンスさまっ♪マジLOVE1000%, 一十木音也)",
    "好きなように生きなされ。そして、あなた様にしか見えぬものを皆に見せてやってくだされ。殿、天下をとりなされ。誰にもうつけなどと呼ばれぬ様に。(信長協奏曲, 平手政秀)",
    "勝て、欲しいモンがあるならな(アイシールド２１, 蛭魔妖一)",
    "tayriいつもそんな気持ちのままじゃいけないよ。なんとかして気分を変えなきゃ！　負けてばかりいるせいだろ？ならなんでもいいから勝つのが一番さ。なんでもいいから勝って自信をとりもどすんだ！！！(スヌーピー, チャーリー・ブラウン)",
    "君はいつも負けると思い込んじゃってるんだ...負けるに決まってる人なんて世の中に一人もいないよ...ずっと続けていれば勝つことだってあるさ！(スヌーピー, ライナス・ヴァン・ペルト)",
    "欲しいものは自分でつかむんだよ、坊や！(スヌーピー, モリー・ボレー)",
    "人生って買い物カートみたいなものなの！私たちひとりひとりカートをもってる、そして世界はスーパーなの！世界はすばらしい物でいっぱい... あなたのカートを押して行くのよ、チャーリー・ブラウン！(スヌーピー, ルーシー・ヴァン・ペルト)",
    "お前は司令官としてずっと一人で背負ってきた　「死んでも止めやがれ！」　「決めねえとぶち殺す！」　仲間に激を飛ばし戦略的に博打を張る　”信じる”ってのはそれとはまるで違う　仲間に命を背中を預けることだ　ヒル魔お前は3年間付き合って初めて俺らを信じると言ったな(アイシールド２１, 武蔵厳)",
    "今回ばっかりは 花 持たせてやる　男にしてやるよ...！(アイシールド２１, 十文字一輝)",
    "大事なものを失って...　身も心も疲れ果て...　けれどそれでも決して捨てることが出来ない想いがあるならば　誰が何と言おうとそれこそが君だけの唯一の真実(るろうに剣心, オイボレ)",
    "あなたの笑顔を一番望んでいる女性が今もあなたを待っています。早く起きて迎えに行ってあげて下さい(るろうに剣心, 雪代巴)",
    "気に入らなければ実力で変えてみたまえ(星村潤一郎, 絶園のテンペスト)",
    "シンジ君。俺はここで水を撒くことしか出来ない。だが君には君にしか出来ない、君になら出来ることがあるはずだ。誰も君に強要はしない。自分で考え、自分で決めろ。自分が今何をすべきなのか。まぁ、後悔のないようにな。(加持リョウジ, 新世紀エヴァンゲリオン)",
    "いろんな重い物を背負いながら、それでも人間ってのは、前に進まなきゃならないんだ(ガウリイ＝ガブリエフ, スレイヤーズ)",
    "元気出せって......その重さ......半分はオレが背負ってやるから......(ガウリイ＝ガブリエフ, スレイヤーズ)",
    "･･････おじいちゃんが　僕の才能は神さまがくれたんだから　ちゃんと世のため人のために使いなさいって言ってたよ！　それにまあ　やっぱ音楽がいちばん好きだし！(のだめカンタービレ, リュカ・ボドリー)",
    "勝負もしねえで諦めるなんてアホだ(リアル, 野宮朋美)",
    "「勝」そう書いてあるが・・・勝たなくてもいいさ　ただ　負けるな　負けるな久信ーーー(リアル, 高橋久行)",
    "正解があるわけじゃない　何かに似せる必要もない　形を整えることが先にあるんじゃなくて・・・思いをまず聞いてあげること・・・自分の本当にちゃんと聞こえるまで耳をすますこと　そのうち何かを気持ちいいと感じる自分に気がついたら　その想いに従えばいいんだ(リアル, 高橋久行)",
    "高橋さん、歩けなくなったからといって人間としての価値が下がるわけではもちろんない！！(リアル, 沢村)",
    "泣きたくなったらいつだって泣いてもいい　その涙ごと抱きしめるよ　雨の後には必ず陽が昇って　未来への地図を照らすはず　（♪夢追人へのSymphony）(ST☆RISH, うたの☆プリンスさまっ♪マジLOVE2000%)",
    "若い芽を摘むんじゃない...これから始まるのだよ!!彼らの時代は...!!!(ONE PIECE（ワンピース）, シルバース・レイリー)",
    "死んでしまっては全てが終わる！私が死んでも戦うことをやめるな！(ONE PIECE（ワンピース）, ゲンゾウ)",
    "ヘルメッポさんは長い間、お父さんの力を借りて生きてきた。でも、これからは前を向かなきゃ。自分の力で夢を探しましょう！(ONE PIECE（ワンピース）, コビー)",
    "井の中の吠えし蛙よ。世の広さを知るがいい。(ONE PIECE（ワンピース）, ジュラキュール・ミホーク)",
    "別に君のことを恨んだりしていない。恨む気もない。ディールは私の自己責任でしていたことだからな　ただ、せめて君は負けるな！君に何かあったら大変だ(C, 江原 大介)",
    "挫折を人生の無駄だと考える奴は、何をやっても挫折する。子供が転ばないように育てるのは小学生までだ。そこから先は、転んでも起き上がる方法を教えるべきだ。(グリザイヤの果実, 風見雄二)",
    "なぁ雄二よ・・・確かに所詮この世はクソ溜めだ・・・どいつもこいつもテメーのことばっか考えて生きてやがる・・・それでも、不意に誰かに優しくしてみようと思ったり、小さな気まぐれって奴はある・・・人の悪意ばっか見てきたオマエにゃ、よくわかんねぇかも知れねぇが、・・・そういった気まぐれがあるからこそ、この世は壊れずに回り続けていけるんだ・・・(グリザイヤの果実, 日下部麻子)",
    "自分のためには引き金を引けなくても構わない。だが、他人のためなら迷わず引き金を引ける男になれ・・・いいな？(グリザイヤの果実, 日下部麻子)",
    "燃えているやつらをバカにしたことを取り消せ。一生懸命が何がくだらないんだ。お前は、そんなやつらに胸がはれるほど充実した毎日を過ごしているのか。(ROOKIES, 川藤幸一)",
    "彼らは未熟なんです。我々と同じものの見方をしろといっても、それはまだ無理なんです。だから我々が彼らと同じ目線をもってやらなきゃならんのです(ROOKIES, 川藤幸一)",
    "進め！進め！勝利の女神はお前らに　下着をちらつかせているぞ！(フリッツ・ヨーゼフ・ビッテンフェルト, 銀河英雄伝説)",
    "ヤン　生きて帰れよ！死ぬには　バカバカしすぎる闘いだ(アレックス・キャゼルヌ, 銀河英雄伝説)",
    "時計、それは人が生活するために必要な、切っても切れないパートナー。たまに遅れたりするけど、それが大切な時計なら大目に見てやろう。時計はオレたちが寝てる間も休むことなく、チクタク働き続けているのだから。(名探偵コナン, 江戸川コナン)",
    "大丈夫。あなたならできるわ...。自分の力を信じなさい...。(佐藤美和子, 名探偵コナン)",
    "刑事なら刑事らしく、時効ギリギリまでホシを追い続けろよ！(千葉刑事, 名探偵コナン)",
    "変化球はアカンで！直球や！ド真ん中、直球で勝負すんねんでー！！(名探偵コナン, 遠山和葉)",
    "どっしり、落ち着いて。考えちゃいけない、からだで、おぼえるんだ。(スナフキン, ムーミン)",
    "やらない後悔よりやって後悔しようよ！何もしないんじゃ何も始まらない！(アナと雪の女王, オラフ)",
    "夢を見ることは、誰にも止められないわ。(シンデレラ)",
    "人生は見てるだけじゃなくて、生きてみないと。寂しく見てるだけでは置いてけぼりにされちゃうんだよ(ノートルダムの鐘, ラヴァーン)",
    "お前のことは嫌いだがな、困ってる人を放っとく程、オレは人でなしじゃねぇ。(ニセコイ, 一条楽)",
    "簡単にあきらめちゃだめだぞ！(クレヨンしんちゃん, クレヨンしんちゃん 嵐を呼ぶ!夕陽のカスカベボーイズ, 野原しんのすけ)",
    "自分の息子が体張ってぶつかってきてんだぞ！それに応えないで何が父親だ！(クレヨンしんちゃん, クレヨンしんちゃん ガチンコ!逆襲のロボとーちゃん, 野原ひろし)",
    "力を合わせて頑張れば、きっと道は開かれる。　（野原ひろし/野原みさえ）(クレヨンしんちゃん, クレヨンしんちゃん ブリブリ王国の秘宝, 野原ひろし, 野原みさえ)",
    "お前たちが本気で21世紀を生きたいなら、行動しろ。未来を手に入れて見せろ。(クレヨンしんちゃん, クレヨンしんちゃん 嵐を呼ぶ モーレツ!オトナ帝国の逆襲, ケン)",
    "命を粗末にする奴は、オレがぶっ殺す！(クレヨンしんちゃん, クレヨンしんちゃん 電撃!ブタのヒヅメ大作戦, 筋肉)",
    "人に頭がさげられない奴ってのは、一生 半人前だよ。(めぞん一刻, 三鷹瞬)",
    "そういう大事なことは口に出して言わない方がいいですよ(めぞん一刻, 四谷)",
    "他人にやらされてた練習を努力とは言わねえだろ。(MAJOR, 茂野吾郎)",
    "運動音痴なんてオレがいっしょに退治してやるよ。今日はおまえが1人で捕れるようになるまで、オレ、この手絶対はなさねーから・・いっしょにがんばろーぜ！(MAJOR, 茂野吾郎)",
    "あんま鈍感だと、愛想つかされますよ。(MAJOR, 清水大河)",
    "痛いか！？　そりゃ痛いだろうなぁ！でもお前の親父が教えたかったのは、痛みや死への恐怖なんかじゃない！！そのボールを使った、『野球』というゲームの楽しさだろうが！！—-おまえに野球の素晴らしさとその勇気を残しておきたかったからだろ！！(MAJOR, 樫本修一)",
    "がんばれよ！勝ち負けは気にすんな！誰にも打たれずに大きくなったピッチャーはいねぇって！！(MAJOR, 茂野吾郎)",
    "わしは信じる。あの子を信じて言うてやる。よくやっとると、頑張っとると。悔しいんじゃあの子は。武蔵のようにはできぬことが。何が嘘だとてかまわぬ。母だけは見方じゃ。(お杉おばば, バガボンド)",
    "ほうら、言うたじゃろ。おぬしの未来は広がってゆく。八の字の如くに。負けるな又八。負けるな。(お杉おばば, バガボンド)",
    "あなたでさえ、ひとりで生きているのではないよ。(バガボンド, 柳生石舟斎)",
    "好きな人の好きなものを、剣を、嫌いになったりしない。(おつう, バガボンド)",
    "過去は過去、今日のお前は今日つくるんだよ。(バガボンド, 泰堂)",
    "人生もそうだ。空模様と同じだ。晴たり、曇ったり、雨もふりゃ、カミナリも落ちる。めんどくせぇもんだ。ところでムッタ。　「空」と「人生」の一番の違いは何だか知ってるか？　「空」は誰のもんでもない　「人生」は自分のもんだ　人生はコントロールが効く(デニール・ヤング, 宇宙兄弟)",
    "宇宙行くの夢なんだろ　諦めんなよ　もし諦め切れるんなら　そんなもん夢じゃねえ(南波日々人, 宇宙兄弟)",
    "また積めばいいよ　次はもっと　上手く積めるようになってるよ(宇宙兄弟, 真壁ケンジ)",
    "私は必死について来ようと手をのばし続けるものにはこちらも手を差し出します(ビンセント・ボールド, 宇宙兄弟)",
    "チャンスがたっぷりあんねんから。　チャンスは昔より広がった。　君は、そういう時代に生まれた。後は、君次第やで。(宇宙兄弟)",
    "２人でいれば　涙もかわくと思います(ぼくの地球を守って, オ＝アンティ＝シャ＝ギョク＝ラン)",
    "なによ男のくせにメソメソして　しっかりしなさいよ　あたしはずっと親友でいてあげるわよ(ぼくの地球を守って, 国生桜)",
    "俺ァもう何も訊かねえことにしたよ　...だがこれだけは憶えといてくれ　俺は絶対に諦めねえぜ　春ちゃんが自分から話してくれるのを　ずっと信じて待ってるから...そこんとこ......よろしく頼むぜ　な(ぼくの地球を守って, 田村一登)",
    "飾りはゴミや、カスや、不要品や！そんなものにこだわっとる限り、本質は、真実は絶対に見えてこない！！(弱虫ペダル, 御堂筋 翔)",
    "１回勝てばいいだけならそれはキセキちゃうの？　ずるずる落ちたら意味ないやん　それ弱いんいうちゃうの！？(弱虫ペダル, 御堂筋 翔)",
    "進むも止まるもおまえ次第だ　進まないのはお前が進もうとしてないからだ。前だけ見ろ(弱虫ペダル, 福富寿一)",
    "おまえが辛くなったらオレたちがいる オレたちが辛そうになったらおまえが全力で助けろ それがチーム(弱虫ペダル, 金城 真護　)",
    "お前のやりかたで突破しろ(巻島裕介, 弱虫ペダル)",
    "失敗するかもしれないけどさ、ぶつかり合わないとなかなか本当の友達になれないもんだしな。なんつーか、安全策ばっかだと本当に大事なものなくすぞって話(ココロネクト, 後藤龍善)",
    "一人で生きてんじゃねーんだよ　バァーカ(ろくでなしBLUES, 前田太尊)",
    "ゼッタイそのチャンス逃がすんじゃねーぞ　一生の運を使い果たしてでもここで食らいつけ(ろくでなしBLUES, 島袋大)",
    "君は自分の本当の気持ちを知っているはずだ！そんなに自分を殺して俺を悲しませないでおくれ！君はそんなことで　あきらめてしまうのか！？もっと自分に正直になるんだ！　ベイベ――ッ！(ろくでなしBLUES, 中田小兵二)",
    "俺たちは、お前が夢を叶えるのを夢みてんだよぉ！(CLANNAD, Keyブランド, 古河秋生)",
    "今のうちに泣いておきなさい。じゃないと色相が濁っちゃうわよ。(サイコパス, 六合塚弥生)",
    "出世を控えた上司を、部下が気遣って何が悪い？(サイコパス, 征陸智己)",
    "行って、シモン、そのためにみんな必死でやってきたんだから。(ヨーコ・リットナー, 天元突破グレンラガン)",
    "あなたは死にたいのですか？　怖いのなら　逃げればいいのです。　死んではいけません。(ニア, 天元突破グレンラガン)",
    "勝てなくてもいいんだけど！？　そんなわけあるか！　千早！　目の前にいるのは、俺だろ！(ちはやふる, 真島太一)",
    "やりたいことを思いっきりやるためには　やりたくないことも思いっきりやんなきゃいけないんだ(ちはやふる, 駒野勉)",
    "“青春ぜんぶ懸けたって強くなれない”？　懸けてから言いなさい。(ちはやふる, 原田秀雄)",
    "どんなに苦しい試合でも　焦らないために　いま苦しみなさい　追い込まれた経験がない者は決して強くはならないわ(ちはやふる, 桜沢翠)",
    "山ちゃん　全力を出そうよ　私は出すよ(ちはやふる, 綾瀬千早)",
    "比べようがねぇなら比べるな！(タッチ, 上杉達也)",
    "信―――漂の弔いはその涙で最後にしておけ。これから先はお前の路だ。(キングダム, 嬴政(えいせい）)",
    "たとえ何が起ころうと、死んでも諦めぬことが王騎軍の誇りだったはずですよ。(キングダム, 王騎)",
    "似合わねえって言ってんだよ！悲劇のヒロイン気取りやがって！おめーがそんなタマか！(SKET DANCE (スケットダンス), 藤崎佑助)",
    "自分が一番不幸だって面しやがって、可哀想な自分に酔ってんじゃねーよ！(SKET DANCE (スケットダンス), 藤崎佑助)",
    "あなたはいつもそうやって、一生懸命人を応援してるのね。/他にやることがねぇだけだ。(杉崎綾乃/藤崎佑助)(SKET DANCE (スケットダンス), 杉崎綾乃, 藤崎佑助)",
    "確かにクラスには色んな人間がいて自分から話かけられないヤツもいるでもみんなどっかで勇気出して殻を破る瞬間が来んだ！お前はその変なこだわりちょっと破るだけだ！簡単だろ？(SKET DANCE (スケットダンス), 藤崎佑助)",
    "友達を助けたいと思うのに、理由なんていらねぇよ。助けると言ったんだから助ける！(SKET DANCE (スケットダンス), 藤崎佑助)",
    "オレは色んな人の手助けのおかげで生きてんだよな。(SKET DANCE (スケットダンス), 藤崎佑助)",
    "君の人助けとは何だ？/理解者になること。乗り越えることは変わることじゃなくていい。その人が今いる位置を認めて、愛しいと思えるように背中を押す事。(SKET DANCE (スケットダンス), 理事長, 藤崎佑助)",
    "キミの夢が叶うのは、誰かのおかげじゃないぜ。(SKET DANCE (スケットダンス), 藤崎佑助)",
    "汚れ仕事をできねーヤツが人助けなんかできるかよ。(SKET DANCE (スケットダンス), 藤崎佑助)",
    "オレも母ちゃんも、人の助けのおかげで生きてこられた人間だ。だからオレは、いずれは人の役に立てる人間になりたい。(SKET DANCE (スケットダンス), 桐島亮輔)",
    "ボクは助けるぞ！たとえ頼まれなくても！ 友達が困ってるならボクは助ける！(SKET DANCE (スケットダンス), 椿佐介)",
    "仲間は宝だ。助け合って絆を一生大切にしろ。(SKET DANCE (スケットダンス), 桐島亮輔)",
    "オレは本当にラッキーだ、色んな人達に支えられて、助けられて生きてるだけでラッキーだ。(SKET DANCE (スケットダンス), 桐島亮輔)",
    "休日に怠惰な生活になるのは、自分に甘い証拠！(SKET DANCE (スケットダンス), 椿佐介)",
    "友達が困ってるなら、私は助ける。(SKET DANCE (スケットダンス), 早乙女浪漫)",
    "昔は昔だ。今と関係ねえだろ。人生に少し傷がついたら、もう終わりなのか！？(SKET DANCE (スケットダンス), 加藤希里)",
    "仮にミスをしない教師になれたとして、だから何だっつんだよ。短所を矯正する為に長所を抑えちまったら？自分らしさをなくしちまったら？そりゃ本末転倒だぜ。(SKET DANCE (スケットダンス), 中馬鉄治)",
    "男が簡単にあきらめるんじゃないよぉ！(ジブリシリーズ, マ=ドーラ, 天空の城ラピュタ)",
    "泣き言なんか聞きたかないね！なんとかしな！(ジブリシリーズ, マ=ドーラ, 天空の城ラピュタ)",
    "有機農業って？/生きもの自体が持っている生命力をひきだして、人間はそれを手助けするだけっていうカッコイイ農業のことなんです。(岡島タエ子/トシオ)(おもひでぽろぽろ, ジブリシリーズ, トシオ, 岡島タエ子)",
    "君も男なら、ききわけたまえ！！（ムスカ大佐）(ジブリシリーズ, 天空の城ラピュタ)",
    "偉そうな口をきくんじゃないよ。娘っこ一人守れない小僧っ子が！(ジブリシリーズ, マ=ドーラ, 天空の城ラピュタ)",
    "で、いじけてノコノコ帰ってきたわけかい。それでもお前男かい？！えぇ？！！(ジブリシリーズ, マ=ドーラ, 天空の城ラピュタ)",
    "手ぇ出すならしまいまでやれ！（釜爺）(ジブリシリーズ, 千と千尋の神隠し)",
    "おまえを助けてあげたいけど、あたしにはどうすることも出来ないよ。この世界の決まりだからね。（銭婆）(ジブリシリーズ, 千と千尋の神隠し)",
    "僕が一番怖かったのは　善而の死が何の意味も価値もない出来事になってしまうこと　僕はアレほどのことをしてもらえるだけの人間ではなかったので　本当に困ってしまって　僕が一人でも多く　誰かを救済できたなら　善而が僕を助けて死んだ結果が　無駄ではなくなると思った。　でも、善而はそんなこときっと気にしない（アバラ：肋骨さん　ｂｙ吾峠　呼世晴）(読み切り)",
    "余計なことなんか考えねぇで、自分が「こう」と思ったことをしてみろよ！　気持ち良いもんだぜ！(カミナ, 天元突破グレンラガン)",
    "誰かを助けるという事は、誰かを助けないという事。正義の味方っていうのは、とんでもないエゴイストなんだ。(Fate/Stay ni emiyashiro)",
    "そうだ、誰かを助けたいという願いが綺麗だったから憧れた！(Fate/hollow ataraxia, Fateシリーズ, 衛宮士郎)",
    "く、そんなつぶらな瞳で見るのはよすんだ子猫...！私は猫という動物への接し方として助けただけだ、一個人であるお前を助けたワケではない...！(Fate/hollow ataraxia, Fateシリーズ, アーチャー)",
    "弱者を理解できるのは弱者だけ。だが―弱者は弱者であるが故に、他人を助ける余裕なんてないのである。俺たちはお互い弱者だからこそ、手を差し伸べる事はできなかった。(DDD, 石杖所在)",
    "がんばったな、シモン／ダメだよ、おれなんか／おれのピンチを助けんのは、いつもお前だ、ありがとよ（カミナ／シモン）(カミナ, シモン, 天元突破グレンラガン)",
    "俺は戦い続ける。 ひとりでも戦い続ける。 ふたりは助かるんだ。 強くさえあれば。 俺は助ける。 そのためには、なんだってする。 ルールだって犯す。 倫理だって踏みにじる。 でも、あのふたりだけは助ける。 絶対に助ける。(Keyブランド, 棗恭介)",
    "助けてくれてありがとう。でも、助けてって言った覚えはないわ。(キキ, ジブリシリーズ, 魔女の宅急便)",
    "いつもいい風がその子に吹きますように...。(ジブリシリーズ, 谷の女性, 風の谷のナウシカ)",
    "どんな天才でも、一人では世界は変えられません。世界を変えるのは私たちではないのです。私たちにできるのは、手助けをすることだけです。(DEATH NOTE（デスノート）, L Lawliet（エル・ローライト）)",
    "おとーちゃんが助けてやれるのもここまでだもう限界だこっから先はおまえが自分で道をつくるんだ(capeta, 平茂雄)",
    "負けないでくれよ・・・・・・諦めちゃくやしいよ・・・・・・(うしおととら, 蒼月潮)",
    "好きな者（モン）を助けるのに、そんなものカンケーあるか。(うしおととら, 蒼月潮)",
    "オレは人間だからよ！助け呼んでる者ほってけねえって。(うしおととら, 工事現場のおじさん)",
    "ダイ君!　勝って!! 誰のためでもない。キミ自身のためにっ!!(DRAGON QUEST -ダイの大冒険-, レオナ)",
    "真似なんかしないで...自分らしい所を見せなさい！！(DRAGON QUEST -ダイの大冒険-, マァム)",
    "人は一人で勝手に助かるだけ。誰かが誰かを助けることなどできない。(傾物語, 忍野メメ, 物語シリーズ)",
    "助けてほしいとか言ってたくせにあんな嘘をついたのは、心配をかけたくなかったからだと俺様は思っていたが、違うのかい？(クチナワ, 囮物語, 物語シリーズ)",
    "すごいすごいばっか言ってねーで、お前も早く自分のスタイルを見つけろ(Free!, 松岡凛)",
    "仲間に言うべきなのは、助けてじゃない、一人で頑張るでもない、一緒に頑張ろうなんだ！(ココロネクト, 桐山唯)",
    "人は助け合うことで生きているのさ、生きていけるのさ(物語シリーズ, 臥煙伊豆湖, 鬼物語)",
    "友達に助けを求められて、知らん顔なんてしてられるか！(ジャイアン（剛田武）, ドラえもん)",
    "araraたった一人の人間も救えない奴が世界を語るな！まずは目の前のちっぽけな命を助けてみろ！(化物語, 物語シリーズ, 阿良々木暦)",
    "助けないよ、力を貸すだけ。君が一人で勝手に助かるだけだよ、おじょうちゃん。(化物語, 忍野メメ, 物語シリーズ)",
    "助けてって言わなきゃ、助けを求めたことにならないわけでもないだろう？　好きって言わなきゃ、好きってことにならないわけでもないように(忍野メメ, 物語シリーズ, 猫物語（黒）)",
    "都合よく自分を助けてくれるヒーロー......それを外に求めることができず、自分の中で育てちゃったわけだね(忍野メメ, 物語シリーズ, 猫物語（黒）)",
    "１+１は １よりも大きいよ 助け合うのは当たり前じゃない(のび太（野比のび太）, ドラえもん)",
    "きっと　僕は　目を背けたかった　あの時　自分の身を捨ててあなたを助けようとしなかった　情けない自分自身から　僕は死神を憎むことで　そこから目を背けようとしていたんです(BLEACH, 石田雨竜)",
    "テメーは　あの時体張って俺を助けてくれた！　あん時テメーは「死神の義務だから」とか　そんなムズカシいこと考えて助けたのか？　体張る時って、そんなんじゃねぇだろ!(BLEACH, 黒崎一護)",
    "一護が助けたがってる 一護が命をかけてるんだ 十分だ 俺が命をかけるのにそれ以上の理由は必要ない(BLEACH, 茶度泰虎（チャド）)",
    "ナナちゃんに伝えて。レンを永遠に失いたくなかったら、今そばにいろって(NANA, 一ノ瀬巧)",
    "バンドってのはさ、言ってみりゃ運命共同体だ。おれが今守らなきゃならねえのは、昔捨てて来た仲間じゃねえんだよ(NANA, 本城蓮)",
    "怖いのがなんだ！？助けたい気持ちの方が何百倍もでけえんだ！！(セッコロ, 金色のガッシュ!!)",
    "地位になんの価値がある？てめえの小汚え口から出た地位が、どれほどオレを助けた？何も助かっちゃいねえ･･･オレを正気に戻したのはこいつの言葉だ!こいつの友達になってくれるという言葉だ！(パムーン, 金色のガッシュ!!)"
  ]

  robot.catchAll (res) ->
    r = new RegExp "(.*) (created|updated) (.*)", "i"
    matches = res.message.text.match(r)
    if matches == null or matches.length == 0
      return
    res.send "お疲れ様！どんどんドーナッツ！どーんといこう！！\n" + res.random cheer

