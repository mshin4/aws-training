module "db" {
    source = "./advc"
    server_names = ["mariadb", "mysql", "mssql"]
}

output "private_ips" {
    value = module.db.PrivateIP
}