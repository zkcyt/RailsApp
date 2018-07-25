class PeopleController < ApplicationController
  def add
    @msg = "add new data."
  end

  protect_from_forgery

  def create
    if request.post? then
      obj = Person.create(name:params['name'], age:params['age'], mail:params['mail'])
    end
    redirect_to '/people'
  end


  def index
    @msg = 'Person data.'
    @data = Person.all
  end

  def show
    @msg = "Indexed data."
    @data = Person.find(params[:id])
  end
end
