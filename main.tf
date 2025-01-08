resource "aws_route53_record" "route53_record" {
  for_each = {
    for record in local.dns_records : "${record.key}" => record
  }

  name = each.value.name
  type = each.value.type
  zone_id = each.value.zone_id
  ttl = each.value.ttl
  records = each.value.records
}