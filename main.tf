# main.tf

provider "google" {
  project = "advterraform-test"
  region  = "me-central1"
}

resource "google_compute_instance" "k8s_master" {
  name         = "k8s-master"
  machine_type = "e2-medium"
  zone         = "me-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
      size  = 50
    }
  }

  network_interface {
    network = "default"

    access_config {
      // This will assign an external IP to the instance
    }
  }

  metadata = {
    ssh-keys = "emre:${file("~/.ssh/id_rsa.pub")}"
  }
}

resource "google_compute_instance" "k8s_worker" {
  name         = "k8s-worker"
  machine_type = "e2-medium"
  zone         = "me-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
      size  = 50
    }
  }

  network_interface {
    network = "default"

    access_config {
      // This will assign an external IP to the instance
    }
  }

  metadata = {
    ssh-keys = "emre:${file("~/.ssh/id_rsa.pub")}"
  }
}

resource "google_compute_instance" "jenkins" {
  name         = "jenkins"
  machine_type = "e2-medium"
  zone         = "me-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"
      size  = 40
    }
  }

  network_interface {
    network = "default"

    access_config {
      // This will assign an external IP to the instance
    }
  }

  metadata = {
    ssh-keys = "emre:${file("~/.ssh/id_rsa.pub")}"
  }
}

resource "google_compute_firewall" "allow_nodeports" {
  name    = "allow-nodeports"
  network = "default"
  
  allow {
    protocol = "icmp"
  }
  
  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-2000", "22", "30000-40000"]
  }
 
  source_ranges = ["0.0.0.0/0"]  
}
