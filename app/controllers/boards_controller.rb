class BoardsController < ApplicationController
    def index # コントローラのメソッドをアクションともいう。おそらくroutes.rbで指定されたルートに対応する。
    end

    def new
        @board = Board.new # 新しいBoardオブジェクトを作成. これを記述するとViewで使用可能になる。
        # binding.pry
    end
end