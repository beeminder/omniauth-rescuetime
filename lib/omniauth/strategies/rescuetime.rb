require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Rescuetime < OmniAuth::Strategies::OAuth2
      option :name, 'rescuetime'

      option :client_options, {
        :site => 'https://www.rescuetime.com',
        :authorize_url => 'https://www.rescuetime.com/oauth/authorize',
        :response_type => 'code'
      }
      # Bugfix for regression introduced after omniauth-oauth2 v1.3.1
      # details: https://github.com/intridea/omniauth-oauth2/issues/8
      def callback_url
        options[:callback_url] || (full_host + script_name + callback_path)
      end
    end
  end
end

OmniAuth.config.add_camelization 'rescuetime', 'Rescuetime'
