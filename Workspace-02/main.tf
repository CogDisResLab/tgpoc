resource "random_pet" "workspace02" {
  length = 3
}

resource "random_uuid" "workspace02" {

}

output "workspace02_pet" {
  value = random_pet.workspace02
}

output "workspace02_uuid" {
  value = random_uuid.workspace02
}

data "tfe_outputs" "workspace01" {
  organization = "CogDisResLab"
  workspace    = "Workspace-01"
}

output "pets" {
  value = "${data.tfe_outputs.workspace01.values.workspace01_pet.id}/${random_pet.workspace02.id}"
  sensitive = true

}