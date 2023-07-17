# frozen_string_literal: true

class Users::PasswordsController < Devise::PasswordsController
  # GET /resource/password/new
  # def new
  #   super
  # end

  # POST /resource/password
   def create
    user = User.find_by(email: params[:email])

    if user
      user.generate_password_reset_token!
      PasswordMailer.with(user: user).reset_password_email.deliver_now
  
      flash[:notice] = "Un email a été envoyé avec les instructions pour réinitialiser votre mot de passe."
      redirect_to root_path
    else
      flash[:alert] = "Aucun utilisateur n'a été trouvé avec cet email."
      render :new
    end
  end

  # GET /resource/password/edit?reset_password_token=abcdef
   def edit
    @user = User.find_by(password_reset_token: params[:token])
  
    if @user
      session[:reset_token] = params[:token]
    else
      flash[:alert] = "Le lien de réinitialisation du mot de passe est invalide ou a expiré."
      redirect_to root_path
    end
   end

  # PUT /resource/password
   def update
      @user = User.find_by(password_reset_token: session[:reset_token])
      
      if @user && @user.update(password: params[:password], password_confirmation: params[:password_confirmation])
        @user.clear_password_reset_token!
        
        flash[:notice] = "Votre mot de passe a été réinitialisé avec succès."
        redirect_to root_path
      else
        flash[:alert] = "Erreur lors de la réinitialisation du mot de passe. Veuillez réessayer."
        render :edit
      end
   end

  # protected

  # def after_resetting_password_path_for(resource)
  #   super(resource)
  # end

  # The path used after sending reset password instructions
  # def after_sending_reset_password_instructions_path_for(resource_name)
  #   super(resource_name)
  # end
end
