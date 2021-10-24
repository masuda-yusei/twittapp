class PutsController < ApplicationController
  before_action :set_twitt, only: [:show, :edit, :update, :destroy]
  def index
    @puts = Put.all
  end
  def new
    @put = Put.new
  end
  def create
    @put = Put.new(put_params)
    if params[:back]
      render :new
    else
      if @put.save
        redirect_to puts_path, notice: "ツイートしました！"
      else
        render :new
      end
    end
  end
  def show
  end
  def edit
  end
  def update
    if @put.update(put_params)
      redirect_to put_path, notice: "ツイートを編集しました！"
    else
      render :edit
    end
  end
  def destroy
    @put.destroy
    redirect_to puts_path, notice:"ツイートを削除しました！"
  end
  def confirm
    @put = Put.new(put_params)
    render :new if @put.invalid?
  end
  private
  def put_params
    params.require(:put).permit(:content)
  end
  def set_twitt
    @put = Put.find(params[:id])
  end
end
