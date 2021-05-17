class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
    @members = ['Eva', 'Wendela', "Tom", 'Dareos', 'Lucien', 'Claire']
    if params[:teacher]
      @members = @members.select { |member| member.start_with?(params[:teacher]) }
    end
  end
end
