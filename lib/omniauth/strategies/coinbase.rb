require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Coinbase < OmniAuth::Strategies::OAuth2
      option :name, 'coinbase'
      option :client_options, {
              :site => 'https://coinbase.com',
              :proxy => ENV['http_proxy'] ? URI(ENV['http_proxy']) : nil
      }
    end
  end
end
