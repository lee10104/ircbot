require 'cinch'

  bot = Cinch::Bot.new do
    configure do |c|
      c.nick = 'G-bot'
      c.realname = 'G-bot'
      c.user = 'G-bot'

      c.server = 'irc.uriirc.org'
      c.port = 16667
      c.ssl.use = true

      c.channels = ['#blahblah']
      c.max_reconnect_delay = 60
    end

    on :message, 'ping' do |m|
      m.reply 'pong'
    end

    on :message, '술 먹고싶다' do |m|
      m.reply '술 좀 그만 먹어'
    end

    on :message, '뭐 먹지?' do |m|
      m.reply ['맥주', '소주', '막걸리', '칵테일'].sample()
    end

    on :message, '맥주 어디서 먹지?' do |m|
      m.reply ['코너탭', '링고', '세계맥주', '블루트레인', '전 술꾼이 아니라서 모르겠어요ㅠㅠ', '라라삐뽀', '레드락'].sample()
    end

    on :message, '소주 뭐 먹지?' do |m|
      m.reply ['좋은데이 석류', '좋은데이 블루베리', '좋은데이 자몽', '순하리 유자', '순하리 복숭아'].sample()
    end

    on :message, '소주 어디서 먹지?' do |m|
      m.reply ['형모장', '먹지 마', '김젼장', '조이스톤', '119포차', '말뚝박기', '전 술꾼이 아니라서 모르겠어요ㅠㅠ'].sample()
    end

    on :message, '막걸리 어디서 먹지?' do |m|
      m.reply '예인촌'
    end

    on :message, '칵테일 어디서 먹지?' do |m|
      m.reply '진바'
    end

    on :message, '너무 적잖아' do |m|
      m.reply '더 넣고 싶은 술집이 있으면 김갤럭에게 알려주세요!'
    end

  end

  bot.start
