class SweetsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

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
    @sweet = Sweet.find(params[:id])
    # binding.break
    # return redirect_to root_path if current_user.id != @sweet.user_id
  end

  def update
    @sweet = Sweet.find(params[:id])
    # return redirect_to user_path if current_user.id != @food.user.id
    if @sweet.update(sweet_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @sweet = Sweet.find(params[:id])
    return redirect_to root_path if current_user.id != @sweet.user.id
    @sweet.destroy
    redirect_to root_path
  end

  private

  def sweet_params #ストロングパラメータ
    params.require(:sweet).permit(:name, :description) #パラメーターのキー
  end
end
