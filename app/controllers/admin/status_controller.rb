class Admin::StatusController < ApplicationController
  def index
    @statuses = Status.all
  end
end
