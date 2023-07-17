#frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
   before_action :configure_sign_in_params, only: [:new,:create,:destroy]

  # GET /resource/sign_in
   def new
    @user = User.new
   end

  # POST /resource/sign_in
  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      # Connecter l'utilisateur
      session[:user_id] = user.id
      redirect_to root_url, notice: "Vous êtes maintenant connecté."
    else
      flash.now.alert = "Email ou mot de passe invalide."
      render :new
    end
  end

  # DELETE /resource/sign_out
  def destroy
    # Déconnecter l'utilisateur
    session[:user_id] = nil
    redirect_to root_url, notice: "Vous êtes maintenant déconnecté."
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
   def configure_sign_in_params
     devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
   end
end
