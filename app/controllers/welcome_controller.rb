class WelcomeController < ApplicationController
  def index
    if Project.all.size > 0
      @project = Project.first
    end
  end
end
