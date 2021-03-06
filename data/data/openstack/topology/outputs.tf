output "service_port_id" {
  value = "${openstack_networking_port_v2.service_port.id}"
}

output "bootstrap_port_id" {
  value = "${openstack_networking_port_v2.bootstrap_port.id}"
}

output "bootstrap_port_ip" {
  value = "${openstack_networking_port_v2.bootstrap_port.all_fixed_ips[0]}"
}

output "master_ips" {
  value = "${flatten(openstack_networking_port_v2.masters.*.all_fixed_ips)}"
}

output "master_port_names" {
  value = "${openstack_networking_port_v2.masters.*.name}"
}

output "service_vm_fixed_ip" {
  value = "${openstack_networking_port_v2.service_port.all_fixed_ips[0]}"
}

output "master_sg_id" {
  value = "${openstack_networking_secgroup_v2.master.id}"
}

output "master_port_ids" {
  value = "${local.master_port_ids}"
}
