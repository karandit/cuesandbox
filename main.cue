package cuesandbox

Region ::
          "us-east-1" |
          "us-east-2" |
          "us-west-1" |
          "us-west-2" |
          "ca-central-1" |
          "eu-central-1" |
          "eu-west-1" |
          "eu-west-2" |
          "eu-west-3" |
          "ap-northeast-1" |
          "ap-northeast-2" |
          "ap-northeast-3" |
          "ap-southeast-1" |
          "ap-southeast-2" |
          "ap-south-1" |
          "sa-east-1"

StorageType ::
          "standard" |
          "gp2" |
          "io1"

_base_url :"git::git@github.com:karandit/cuesandbox.git//"
_version : "?ref=v0.3.0"

MySql :: {
	source : "\(_base_url)mysql\(_version)"

	aws_region :        Region
	name :              string
	instance_class :    string
	allocated_storage : int
	storage_type :      StorageType
	master_username :   string
	master_password :   string
}

Consul :: {
	source : "\(_base_url)consul\(_version)"

	aws_region :    Region
	cluster_name :  string
	num_servers :   int
	num_clients :   int
	ssh_key_name? : string
}

AsgElb :: {
	source : "\(_base_url)asgelb\(_version)"

	aws_region :    Region
	name :          string
	instance_type : string
	min_size :      int
	max_size :      int
	server_port :   int
	elb_port :      int
}
