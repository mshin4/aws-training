import {
    id = ""
    to = aws_eip.hashicafe
}

import {
    id = ""
    to = aws_eip_association.hashicafe
}

import {
    id = "<i-07df491d747faca3b>"
    to = aws_instance.hashicafe
}

import {
    id = ""
    to = aws_security_group.hashicafe
}

# terraform plan -generate-config-out=generated.tf
# terraform apply --auto-approve; 
# you should not see anything added, changed or destroyed