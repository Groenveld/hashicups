terraform {
  required_providers {
    hashicups = {
      source  = "hashicorp.com/edu/hashicups"
    }
  }
  required_version = ">= 1.1.0"
}

provider "hashicups" {
  username = "education"
  password = "test123"
  host     = "http://localhost:19090"
}

resource "hashicups_order" "edu" {
  items = [{
    coffee = {
      id = 3
    }
    quantity = 2
  }, {
    coffee = {
      id = 1
    }
    quantity = 2
  }
  ]
}

resource "hashicups_order" "edu2" {
  items = [{
    coffee = {
      id = 4
    }
    quantity = 1
  }, {
    coffee = {
      id = 2
    }
    quantity = 1
  }
  ]
}


output "edu_order" {
  value = hashicups_order.edu
}
