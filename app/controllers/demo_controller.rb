class DemoController < ApplicationController
  
	layout false

  def index
  end

  def hello
  	#render('hello')
  	@array = [1,2,3,4,5]
  	@id = params['id'].to_i
  	@page = params[:page].to_i
  end

  def hello_other
  	redirect_to(:controller => 'demo', :action => 'index')
  end
end
