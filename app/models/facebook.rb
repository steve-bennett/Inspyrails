class Facebook < ActiveRecord::Base

  def profile
    @profile ||= FbGraph::User.me(self.access_token).fetch
  end

  class << self
    extend ActiveSupport::Memoizable

  # memoizable means capable of caching the result. 
  # FYI The usual syntax for memoizing is this: @instance_var ||= 'value'
  # This is known as 'conditional assignment' as it only assigns the value if the variable is empty (i.e. false)
  # i.e. after the first time it's called, the cached version is used.
  
    def config
      
      # loads up config instance_var once if all environment variables are available, otherwise load up from YAML file.
      @config ||= if ENV['fb_client_id'] && ENV['fb_client_secret'] && ENV['fb_scope']
        {
          :client_id     => ENV['fb_client_id'],
          :client_secret => ENV['fb_client_secret'],
          :scope         => ENV['fb_scope']
        }
      else
        YAML.load_file("#{Rails.root}/config/facebook.yml")[Rails.env].symbolize_keys
      end
      
    rescue Errno::ENOENT => e
      raise StandardError.new("config/facebook.yml could not be loaded.")
    end


    def app
      FbGraph::Application.new config[:client_id], :secret => config[:client_secret]
    end

    # authorises this application to access fb
    def auth(redirect_uri = nil)
      FbGraph::Auth.new config[:client_id], config[:client_secret], :redirect_uri => redirect_uri
    end

    def identify(fb_user)
      _fb_user_ = find_or_initialize_by_identifier(fb_user.identifier.try(:to_s))
      _fb_user_.access_token = fb_user.access_token.access_token
      _fb_user_.save!
      _fb_user_
    end
  end

end
