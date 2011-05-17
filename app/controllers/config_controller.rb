class ConfigController < ApplicationController
  def index
    @garmenttypes = Garmenttype.all
    @clientsources = Clientsource.all
  end

end
