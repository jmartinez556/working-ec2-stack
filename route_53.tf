module "route_53" {
  source         = "../modules/route_53"
  alias_name     = module.load_balancer.lb_name
  hosted_zone_id = "Z01146212F8P0X6ZMXFNW"
  lb_zone_id     = module.load_balancer.zone_id
  subdomain      = "test3"
  record_type    = "A"
}