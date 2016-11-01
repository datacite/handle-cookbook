default['java']['install_flavor'] = "oracle"
default['java']['oracle']['accept_oracle_download_terms'] = true
default['java']['jdk_version'] = "8"

default['handle']['dir'] = "/hs"
default['handle']['server_name'] = "svr_1"
default['handle']['version'] = "8.1.1"

# default settings for config.dct
default['handle']['bind_address'] = "0.0.0.0"
default['handle']['port'] = "2641"
default['handle']['http_port'] = "8000"
default['handle']['log_accesses'] = "yes"
default['handle']['log_save_directory'] = "logs"
default['handle']['log_save_interval'] = "Monthly"
default['handle']['this_server_id'] = "1"

# these need to be set
default['handle']['sql_host'] = ""
default['handle']['sql_db'] = ""
default['handle']['sql_login'] = ""
default['handle']['sql_passwd'] = ""
default['handle']['server_admins'] = []
default['handle']['replication_authentication'] = []
default['handle']['replication_sites_handle'] = []
