# These are the variables required for the instances submodule to function
# properly and are duplicated highly from the main module but instead do not
# have any defaults set because this submodule should never by called from
# anything else expect the main module where values for all these variables will
# always be passed in
variable "user" {
  description = "Instance user name that will used for SSH operations"
  type        = string
}
variable "ssh_key" {
  description = "Location on disk of the SSH public key to be used for instance SSH access"
  type        = string
}
variable "zones" {
  description = "GCP zone that are within the defined GCP region that you wish to use"
  type        = list(string)
}
variable "compiler_count" {
  description = "The quantity of compilers that are deployed behind a load balancer and will be spread across defined zones"
  type        = number
}
variable "node_count" {
  description = "The quantity of nodes that are deployed within the environment for testing"
  type        = number
}
variable "server_count" {
  description = "The quantity of nodes that are deployed within the environment for testing"
  type        = number
}
variable "database_count" {
  description = "The quantity of nodes that are deployed within the environment for testing"
  type        = number
}
variable "instance_image" {
  description = "The disk image to use when deploying new cloud instances"
  type        = string
}
variable "stack_name" {
  description = "A name that'll help the user identify which instances are are part of a specific PE deployment"
  type        = string
}
variable "project" {
  description = "Name of GCP project that will be used for housing require infrastructure"
  type        = string
}
variable network    {
  description = "VPC network provisioned by the networking submodule"
  type        = string
}
variable subnetwork {
  description = "Regional subnetwork assigned to VPC network provisioned by the networking submodule"
  type        = string
}
variable "id" {
  description = "Randomly generated value used to produce unique names for everything to prevent collisions and visually link resources together"
  type        = string
}
