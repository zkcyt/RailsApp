class HeloController < ApplicationController

  # protect_from_forgery
  layout 'helo'

  def index
      @header = 'layout sample'
      @footer = 'copyright hSuzuki 2018'
      @title = 'New Layout'
      @msg = 'This is a sample page'
  end

end
