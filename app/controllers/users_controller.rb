class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def import
		# User.importを実行
    User.import(params[:file])
    
    # indexにリダイレクト
    redirect_to "/users"
	end

end