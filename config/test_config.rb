class ConfigData

	@@instance = ConfigData.new

	@@environment = :PreRelease

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
		return @@config[@@environment]
	end

	def environment()
		return @@environment
	end

end