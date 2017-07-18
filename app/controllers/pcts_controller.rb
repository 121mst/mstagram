class PctsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_pct, only: [:edit, :update, :destroy]

  def index
    @pcts = Pct.all
  end

  def new
    if params[:back]
      @pct = Pct.new(pcts_params)
    else
      @pct = Pct.new
    end

  end

  def create
    @pct = Pct.new(pcts_params)]
    @pct.user_id = current_user.id
      if @pct.save
        # 一覧画面へ遷移して"ブログを作成しました！"とメッセージを表示します。
        redirect_to pcts_path, notice: "投稿しました！"
      else
        # 入力フォームを再描画します。
        render 'new'
      end
  end

  def edit
  end

  def update
    @pct.update(pcts_params)
    redirect_to pcts_path, notice: "更新しました！"
  end

  def destroy
    @pct.destroy
    redirect_to pcts_path, notice: "削除しました！"
  end

  def confirm
    @pct = Pct.new(pcts_params)
    render :new if @pct.invalid?
  end

  private
   def pcts_params
     params.require(:pct).permit(:title, :content, :image, :image_cache, :remove_image)
   end
   def set_pct
     @pct = Pct.find(params[:id])
   end
end
