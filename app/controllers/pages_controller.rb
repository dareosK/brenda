class PagesController < ApplicationController
  skip_before_action :authenticate_user!, except: [:dashboard]

  RANDOM_IMAGES = ['https://dogemuchwow.com/wp-content/uploads/2019/12/cursed-merman.jpg',
                  'https://i.imgur.com/3Mh20K6.png',
                  'https://conversations.e-flux.com/uploads/default/original/2X/0/07e29f10779d88f2fa57507f6d250218d764f5fc.png',
                  'https://pbs.twimg.com/media/CwJtpLrUMAAIc_N.jpg', 'https://pbs.twimg.com/media/CwC5L0-UEAAMcMe.jpg',
                  'https://pyxis.nymag.com/v1/imgs/392/b88/f2cae65a3354b4fc3a9ff4da05bd9821e7-31-birthday-boy.2x.rhorizontal.w700.jpg',
                  'https://dogemuchwow.com/wp-content/uploads/2019/12/cursed-merman.jpg',
                  'https://i.pinimg.com/originals/44/bf/06/44bf06979c00cc6e1d5b82dbe6a7a314.jpg'
                ]

  def home
    @random_image = RANDOM_IMAGES.sample
  end

  def work
    # TODO: order articles and exhibitions by date
    @articles = Article.all
    @exhibitions = Exhibition.all
  end

  def about
  end

  def dashboard
    @user = current_user
    @articles = Article.all.where(user: current_user)
    @exhibitions = Exhibition.all.where(user: current_user)
  end
end
