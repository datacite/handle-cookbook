name              "handle"
maintainer        "Martin Fenner"
maintainer_email  "mfenner@datacite.org"
license           "Apache 2.0"
description       "Configures handle server"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.1"

# opscode cookbooks
depends           'apt'
depends           'java', '~> 1.42.0'
depends           'expect', '~> 2.0.0'

%w{ ubuntu }.each do |platform|
  supports platform
end
