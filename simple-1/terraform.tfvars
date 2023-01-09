# subnet_cidr = "10.0.30.0/24"
# subnet_cidr = ["10.0.30.0/24", "10.0.30.0/16"]
subnet_cidr = [
    {cidr_block = "10.0.30.0/24", name = "dev-vpc"},
    {cidr_block = "10.0.30.0/16", name = "dev-subnet"}]
