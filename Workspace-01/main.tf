resource "random_pet" "workspace02" {
  length = 3
}

resource "random_uuid" "workspace02" {

}

output "workspace01_pet" {
  value = random_pet.workspace02
}

output "workspace01_uuid" {
  value = random_uuid.workspace02
}

