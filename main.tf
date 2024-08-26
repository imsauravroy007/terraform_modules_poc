module "vpc" {
  source = "./modules/vpc"
   vpc_name = "myvpc3"
   network = "mainnetwork"
   sub_network = "websubnet"
   

}

module "compute-vm" {
   source = "./modules/compute-vm"
   vpcid = module.vpc.vpcid
   subnetworkid = module.vpc.subid
   count = 2
   ssh = "allow-shh${count.index}"
   instance_name = "myinstance${count.index}"
   project_id = var.projectid
   depends_on = [ module.vpc ]
}