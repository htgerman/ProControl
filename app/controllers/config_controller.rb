class ConfigController < ApplicationController
  def index
    @expensetypes = Expensetype.order("name asc")
    @garmenttypes = Garmenttype.order("name asc")
    @clientsources = Clientsource.order("name asc")
  end

end
