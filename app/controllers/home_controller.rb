class HomeController < ApplicationController
  def index
  end

  def techs
    techarr = ['php', 'dotnet', 'testing']
    @techname = params[:name]
    unless techarr.include?(@techname)
      redirect to root_path
    end
  end
end
