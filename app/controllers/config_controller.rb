class ConfigController < ApplicationController
  def index
    @expensetypes = Expensetype.all
    @garmenttypes = Garmenttype.all
    @clientsources = Clientsource.all
  end

end
