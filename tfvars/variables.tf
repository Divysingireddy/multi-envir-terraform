variable "instance_names" {
    type = map
    default = {
        # db-dev = "t3.small"
        # backend-dev = "t3.micro"
        # frontend-dev = "t3.micro"

    }
}

variable "Environment" {
    # default = "dev"
  
}

variable "common_tags" {
    type = map
    default = {
     Project = "Expense"
     Terraform = true

    }
}

variable "Zone_id" {
    default = "Z07596403P30HF2YVRMSO"
}

variable "domain_name" {
    default = "divaws78s.online"
}