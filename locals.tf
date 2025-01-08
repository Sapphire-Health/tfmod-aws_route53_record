locals {
    dns_records = flatten([
        for zone_key, zone in var.var_dns_zones : [
            for record_key, record in zone.records : {
                key = "${record.type}.${record.name}.${var.mod_route53_zone[zone_key].name}"
                zone_id = var.mod_route53_zone[zone_key].zone_id
                name = record.name == "@" ? "${var.mod_route53_zone[zone_key].name}" : "${record.name}"
                type = record.type
                ttl = record.ttl
                records = record.records
            }
        ]
    ])
}