class SessionsController < ApplicationController
def index

end

def new

end


def create
  if params[:name].nil? || params[:name].empty?
    redirect_to "/"
  else

    session[:name] = params[:name]
    redirect_to "sessions#show"
  end
end

def show

end

def destroy
  if current_user
  session[:name] = nil
  session.delete :name
end
  redirect_to "/"

end


end
