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

      uid {
        @raw_info['username']
      }

      info do
        {
          'id' => @raw_info['username'],
          'nickname' => @raw_info['username'],
        }
      end
    end
  end
end

OmniAuth.config.add_camelization 'rescuetime', 'Rescuetime'
