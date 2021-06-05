class UsersController < ApplicationController
  # 以下のアクションを追加
  def new
    @user = User.new
  end
 #一覧画面に対応するためのアクション
def index
@users =  User.all
end
#削除をするためのアクション
def destroy
  user = User.find(params[:id])
  user.delete
end
#編集をするためのアクション
def edit
  @user = User.find(params[:id])
end
#更新をするためのアクション
def update
  user = User.find(params[:id])
  user.update(user_params)
end
  #新規登録するためのアクション
  def create
    # Strong Parameter の記述
    User.create(user_params)
  end

  private
  def user_params
    params.require(:user).permit(:name, :age)
  end
end
