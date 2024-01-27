
data "aws_route53_zone" "main" {
    name        = "eyeamjustjules.com" #the domain name you want to look up
  private_zone  =  false
  }

resource "aws_route53_record" "www"  {
    zone_id  =  data.aws_route53_zone.main.zone_id
    name     =  "eyeamjustjules.com"
    type     =  "A"

  alias  {
      name                   =  aws_lb.app1_alb.dns_name
      zone_id                =  aws_lb.app1_alb.zone_id
      evaluate_target_health =  true
    }
  }