output "nic_id" {
  description = "The ID of the Network Interface"
  value       = module.module_test.nic_id
}

output "nic_name" {
  description = "The name of the Network Interface"
  value       = module.module_test.nic_name
}
output "nic_private_ip" {
  description = "The private IP address of the Network Interface"
  value       = module.module_test.nic_private_ip
}
