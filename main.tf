resource google_compute_instance "github-action-test" {
    name = "github-action-test"
    machine_type = "n1-standard-1"
    network_interface {
      network = "guptaji-tech-network"
      subnetwork = "guptaji-test-subnet"
    }
    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-11"
      }
    }
}