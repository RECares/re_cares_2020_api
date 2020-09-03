class ModulesController < ApplicationController
  def passwords
    render json: File.read('public/modules/passwords.json')
  end
end
