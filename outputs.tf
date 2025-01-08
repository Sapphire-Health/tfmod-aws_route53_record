output "route53_record" {
    description = "Route 53 DNS record resources"
    value = aws_route53_record.route53_record
}