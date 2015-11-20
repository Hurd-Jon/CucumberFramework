class ConfigData

	@@instance = ConfigData.new

	@@config = {
	   :PreRelease => {
	   	:base_url => 'https://prerelease.frmr.org/',
	   	:timeout => 180
	   },
	   :Dev => {
	   	:base_url => 'http://anotherurl.com',
	   	:timeout => 10
	   },
	   :Local => {
	   	:base_url => 'https://alocalurl.com/',
	   	:timeout => 10
	   }
	}

	def self.instance
		return @@instance
	end

	def settings()
		environment=ENV['TEST_ENV'] ||= 'PreRelease'
		return @@config[environment.to_sym]
	end

end