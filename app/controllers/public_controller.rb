class PublicController < ApplicationController
  def main
    if agency_signed_in?
      redirect_to account_path, flash: {success: "Authentification réussie. Bienvenue sur Dreamdwelligs !"} and return 
    end

    @properties = Property.latest
  end
end
