module "vpc" {
  source = "./modules/vpc"
   vpc_name = "myvpc3"
   network = "mainnetwork"
   sub_network = "websubnet"
   

}

module "compute-vm" {
   source = "./modules/compute-vm"
   count = 5
   instance_name = "my_instance${count.index}"
   depends_on = [ module.vpc ]
}