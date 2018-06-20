class SecretsController < ApplicationController
before_action :logged_in

  def show

  end

def logged_in
  if current_user == nil
    redirect_to "/"
  end
end

end
