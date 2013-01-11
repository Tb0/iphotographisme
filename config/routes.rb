# -*- encoding : utf-8 -*-
IphotographismeV2::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root to: 'pictures#index'
end
