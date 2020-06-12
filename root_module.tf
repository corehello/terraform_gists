module "mod1" {
  source    = "./mod1"
  mod1_var1 = "mod1"
}

module "mod2" {
  source    = "./mod2"
  mod2_var1 = module.mod1.output1
}

module "mod3" {
  source    = "./mod3"
  mod3_var1 = module.mod2.output1
}

output "mod3_output1" {
  value = module.mod3.output1
}
