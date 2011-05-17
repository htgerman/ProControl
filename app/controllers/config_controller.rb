class ConfigController < ApplicationController
  def index
    @garmenttypes = Garmenttype.all
    
  end

end
