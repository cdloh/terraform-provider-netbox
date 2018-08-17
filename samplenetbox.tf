provider "netbox" {
	app_id = "2fe35cabcfe231ebc8734a798f1cac63439a7a2b"
	endpoint = "172.17.133.10"
}

data "netbox_prefixes" "prefixes" {
	prefixes_id = 1
}

#output "out_prefixes" {
#	value_prefixes_id = "${netbox_prefixes.prefixes.prefixes_id}"
#	value_created = "${netbox_prefixes.prefixes.created}"
#	value_description = "${netbox_prefixes.prefixes.description}"
#	value_family = "${netbox_prefixes.prefixes.family}"
#    value_id = "${netbox_prefixes.prefixes.id}"
#    value_is_pool = "${netbox_prefixes.prefixes.ispool}"
#    value_last_updated = "${netbox_prefixes.prefixes.last_updated}"
#}

data "netbox_first_free_address" "next_address" {
	prefixes_id = "${data.netbox_prefixes.prefixes.prefixes_id}"
}