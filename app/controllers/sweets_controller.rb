class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
    # binding.break //ログ出力
    # binding.pry
  end

  def new
    @sweet = Sweet.new
  end

  def create
    @sweet = Sweet.new(sweet_params)
    @sweet.user_id = current_user.id
    if @sweet.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    logger.debug("rseges")
  end

  def update
    logger.debug("rseges")
  end

  def delete
    logger.debug("rseges")
  end

  private

  def sweet_params #ストロングパラメータ
    params.require(:sweet).permit(:name, :description) #パラメーターのキー
  end
end
