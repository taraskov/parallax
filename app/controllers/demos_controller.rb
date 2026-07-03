class DemosController < ApplicationController

  def index
  end

  def joy
    render layout: 'joy'
  end

  def isite
    render layout: 'parallax'
  end  

end