resource "random_pet" "workspace01" {
  length = 3
}

resource "random_uuid" "workspace01" {

}

output "workspace01_pet" {
    value = random_pet.workspace01
}

output "workspace01_uuid" {
    value = random_uuid.workspace01
}

