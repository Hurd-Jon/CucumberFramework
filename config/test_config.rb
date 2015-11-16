class ConfigData

	@@instance = ConfigData.new

	@@environment = :PreRelease

	@@config = {
	   :PreRelease => {
	   	:base_url => 'https://prerelease.frmr.org/'
	   },
	   :Dev => {
	   	:base_url => 'http://anotherurl.com'
	   },
	   :Local => {
	   	:base_url => 'https://alocalurl.com/'
	   }
	}

	def self.instance
		return @@instance
	end

	def settings()
		return @@config[@@environment]
	end

	def environment()
		return @@environment
	end

end