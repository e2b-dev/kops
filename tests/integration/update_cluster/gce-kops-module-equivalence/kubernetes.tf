locals {
  cluster_name = "k8s1.equivalence.example.internal"
  project      = "example-project"
  region       = "us-west1"
}

output "cluster_name" {
  value = "k8s1.equivalence.example.internal"
}

output "project" {
  value = "example-project"
}

output "region" {
  value = "us-west1"
}

provider "google" {
  project = "example-project"
  region  = "us-west1"
}

provider "aws" {
  alias  = "files"
  region = "us-test-1"
}

resource "aws_s3_object" "cluster-completed-spec" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_cluster-completed.spec_content")
  key                    = "tests/k8s1.equivalence.example.internal/cluster-completed.spec"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "etcd-cluster-spec-events" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_etcd-cluster-spec-events_content")
  key                    = "tests/k8s1.equivalence.example.internal/backups/etcd/events/control/etcd-cluster-spec"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "etcd-cluster-spec-main" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_etcd-cluster-spec-main_content")
  key                    = "tests/k8s1.equivalence.example.internal/backups/etcd/main/control/etcd-cluster-spec"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "k8s1-equivalence-example-internal-addons-bootstrap" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_k8s1.equivalence.example.internal-addons-bootstrap_content")
  key                    = "tests/k8s1.equivalence.example.internal/addons/bootstrap-channel.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "k8s1-equivalence-example-internal-addons-coredns-addons-k8s-io-k8s-1-12" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_k8s1.equivalence.example.internal-addons-coredns.addons.k8s.io-k8s-1.12_content")
  key                    = "tests/k8s1.equivalence.example.internal/addons/coredns.addons.k8s.io/k8s-1.12.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "k8s1-equivalence-example-internal-addons-gcp-cloud-controller-addons-k8s-io-k8s-1-23" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_k8s1.equivalence.example.internal-addons-gcp-cloud-controller.addons.k8s.io-k8s-1.23_content")
  key                    = "tests/k8s1.equivalence.example.internal/addons/gcp-cloud-controller.addons.k8s.io/k8s-1.23.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "k8s1-equivalence-example-internal-addons-gcp-pd-csi-driver-addons-k8s-io-k8s-1-23" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_k8s1.equivalence.example.internal-addons-gcp-pd-csi-driver.addons.k8s.io-k8s-1.23_content")
  key                    = "tests/k8s1.equivalence.example.internal/addons/gcp-pd-csi-driver.addons.k8s.io/k8s-1.23.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "k8s1-equivalence-example-internal-addons-kops-controller-addons-k8s-io-k8s-1-16" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_k8s1.equivalence.example.internal-addons-kops-controller.addons.k8s.io-k8s-1.16_content")
  key                    = "tests/k8s1.equivalence.example.internal/addons/kops-controller.addons.k8s.io/k8s-1.16.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "k8s1-equivalence-example-internal-addons-kubelet-api-rbac-addons-k8s-io-k8s-1-9" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_k8s1.equivalence.example.internal-addons-kubelet-api.rbac.addons.k8s.io-k8s-1.9_content")
  key                    = "tests/k8s1.equivalence.example.internal/addons/kubelet-api.rbac.addons.k8s.io/k8s-1.9.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "k8s1-equivalence-example-internal-addons-limit-range-addons-k8s-io" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_k8s1.equivalence.example.internal-addons-limit-range.addons.k8s.io_content")
  key                    = "tests/k8s1.equivalence.example.internal/addons/limit-range.addons.k8s.io/v1.5.0.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "k8s1-equivalence-example-internal-addons-metrics-server-addons-k8s-io-k8s-1-11" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_k8s1.equivalence.example.internal-addons-metrics-server.addons.k8s.io-k8s-1.11_content")
  key                    = "tests/k8s1.equivalence.example.internal/addons/metrics-server.addons.k8s.io/k8s-1.11.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "k8s1-equivalence-example-internal-addons-networking-cilium-io-k8s-1-16" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_k8s1.equivalence.example.internal-addons-networking.cilium.io-k8s-1.16_content")
  key                    = "tests/k8s1.equivalence.example.internal/addons/networking.cilium.io/k8s-1.16-v1.15.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "k8s1-equivalence-example-internal-addons-storage-gce-addons-k8s-io-v1-7-0" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_k8s1.equivalence.example.internal-addons-storage-gce.addons.k8s.io-v1.7.0_content")
  key                    = "tests/k8s1.equivalence.example.internal/addons/storage-gce.addons.k8s.io/v1.7.0.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "kops-version-txt" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_kops-version.txt_content")
  key                    = "tests/k8s1.equivalence.example.internal/kops-version.txt"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-events-control-plane-us-west1-a" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-events-control-plane-us-west1-a_content")
  key                    = "tests/k8s1.equivalence.example.internal/manifests/etcd/events-control-plane-us-west1-a.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-events-control-plane-us-west1-b" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-events-control-plane-us-west1-b_content")
  key                    = "tests/k8s1.equivalence.example.internal/manifests/etcd/events-control-plane-us-west1-b.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-events-control-plane-us-west1-c" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-events-control-plane-us-west1-c_content")
  key                    = "tests/k8s1.equivalence.example.internal/manifests/etcd/events-control-plane-us-west1-c.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-main-control-plane-us-west1-a" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-main-control-plane-us-west1-a_content")
  key                    = "tests/k8s1.equivalence.example.internal/manifests/etcd/main-control-plane-us-west1-a.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-main-control-plane-us-west1-b" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-main-control-plane-us-west1-b_content")
  key                    = "tests/k8s1.equivalence.example.internal/manifests/etcd/main-control-plane-us-west1-b.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-main-control-plane-us-west1-c" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-main-control-plane-us-west1-c_content")
  key                    = "tests/k8s1.equivalence.example.internal/manifests/etcd/main-control-plane-us-west1-c.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-static-kube-apiserver-healthcheck" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_manifests-static-kube-apiserver-healthcheck_content")
  key                    = "tests/k8s1.equivalence.example.internal/manifests/static/kube-apiserver-healthcheck.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-control-plane-us-west1-a" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-control-plane-us-west1-a_content")
  key                    = "tests/k8s1.equivalence.example.internal/igconfig/control-plane/control-plane-us-west1-a/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-control-plane-us-west1-b" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-control-plane-us-west1-b_content")
  key                    = "tests/k8s1.equivalence.example.internal/igconfig/control-plane/control-plane-us-west1-b/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-control-plane-us-west1-c" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-control-plane-us-west1-c_content")
  key                    = "tests/k8s1.equivalence.example.internal/igconfig/control-plane/control-plane-us-west1-c/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-nodes-us-west1-a" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-us-west1-a_content")
  key                    = "tests/k8s1.equivalence.example.internal/igconfig/node/nodes-us-west1-a/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-nodes-us-west1-b" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-us-west1-b_content")
  key                    = "tests/k8s1.equivalence.example.internal/igconfig/node/nodes-us-west1-b/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-nodes-us-west1-c" {
  bucket                 = "testingBucket"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-us-west1-c_content")
  key                    = "tests/k8s1.equivalence.example.internal/igconfig/node/nodes-us-west1-c/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "google_compute_address" "api-k8s1-equivalence-example-internal" {
  name = "api-k8s1-equivalence-example-internal"
}

resource "google_compute_address" "api-us-west1-k8s1-equivalence-example-internal" {
  address_type = "INTERNAL"
  name         = "api-us-west1-k8s1-equivalence-example-internal"
  purpose      = "SHARED_LOADBALANCER_VIP"
  subnetwork   = google_compute_subnetwork.us-west1-k8s1-equivalence-example-internal.name
}

resource "google_compute_disk" "a-etcd-events-k8s1-equivalence-example-internal" {
  labels = {
    "k8s-io-cluster-name" = "k8s1-equivalence-example-internal"
    "k8s-io-etcd-events"  = "a-2fa-2cb-2cc"
    "k8s-io-role-master"  = "master"
  }
  name = "a-etcd-events-k8s1-equivalence-example-internal"
  size = 20
  type = "pd-ssd"
  zone = "us-west1-a"
}

resource "google_compute_disk" "a-etcd-main-k8s1-equivalence-example-internal" {
  labels = {
    "k8s-io-cluster-name" = "k8s1-equivalence-example-internal"
    "k8s-io-etcd-main"    = "a-2fa-2cb-2cc"
    "k8s-io-role-master"  = "master"
  }
  name = "a-etcd-main-k8s1-equivalence-example-internal"
  size = 20
  type = "pd-ssd"
  zone = "us-west1-a"
}

resource "google_compute_disk" "b-etcd-events-k8s1-equivalence-example-internal" {
  labels = {
    "k8s-io-cluster-name" = "k8s1-equivalence-example-internal"
    "k8s-io-etcd-events"  = "b-2fa-2cb-2cc"
    "k8s-io-role-master"  = "master"
  }
  name = "b-etcd-events-k8s1-equivalence-example-internal"
  size = 20
  type = "pd-ssd"
  zone = "us-west1-b"
}

resource "google_compute_disk" "b-etcd-main-k8s1-equivalence-example-internal" {
  labels = {
    "k8s-io-cluster-name" = "k8s1-equivalence-example-internal"
    "k8s-io-etcd-main"    = "b-2fa-2cb-2cc"
    "k8s-io-role-master"  = "master"
  }
  name = "b-etcd-main-k8s1-equivalence-example-internal"
  size = 20
  type = "pd-ssd"
  zone = "us-west1-b"
}

resource "google_compute_disk" "c-etcd-events-k8s1-equivalence-example-internal" {
  labels = {
    "k8s-io-cluster-name" = "k8s1-equivalence-example-internal"
    "k8s-io-etcd-events"  = "c-2fa-2cb-2cc"
    "k8s-io-role-master"  = "master"
  }
  name = "c-etcd-events-k8s1-equivalence-example-internal"
  size = 20
  type = "pd-ssd"
  zone = "us-west1-c"
}

resource "google_compute_disk" "c-etcd-main-k8s1-equivalence-example-internal" {
  labels = {
    "k8s-io-cluster-name" = "k8s1-equivalence-example-internal"
    "k8s-io-etcd-main"    = "c-2fa-2cb-2cc"
    "k8s-io-role-master"  = "master"
  }
  name = "c-etcd-main-k8s1-equivalence-example-internal"
  size = 20
  type = "pd-ssd"
  zone = "us-west1-c"
}

resource "google_compute_firewall" "https-api-ipv6-k8s1-equivalence-example-internal" {
  allow {
    ports    = ["443"]
    protocol = "tcp"
  }
  disabled      = false
  name          = "https-api-ipv6-k8s1-equivalence-example-internal"
  network       = "default"
  source_ranges = ["::/0"]
  target_tags   = ["k8s1-equivalence-example-internal-k8s-io-role-control-plane"]
}

resource "google_compute_firewall" "https-api-k8s1-equivalence-example-internal" {
  allow {
    ports    = ["443"]
    protocol = "tcp"
  }
  disabled      = false
  name          = "https-api-k8s1-equivalence-example-internal"
  network       = "default"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["k8s1-equivalence-example-internal-k8s-io-role-control-plane"]
}

resource "google_compute_firewall" "kops-controller-ipv6-k8s1-equivalence-example-internal" {
  allow {
    ports    = ["3988"]
    protocol = "tcp"
  }
  disabled      = false
  name          = "kops-controller-ipv6-k8s1-equivalence-example-internal"
  network       = "default"
  source_ranges = ["::/0"]
  target_tags   = ["k8s1-equivalence-example-internal-k8s-io-role-control-plane"]
}

resource "google_compute_firewall" "kops-controller-k8s1-equivalence-example-internal" {
  allow {
    ports    = ["3988"]
    protocol = "tcp"
  }
  disabled      = false
  name          = "kops-controller-k8s1-equivalence-example-internal"
  network       = "default"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["k8s1-equivalence-example-internal-k8s-io-role-control-plane"]
}

resource "google_compute_firewall" "lb-health-checks-k8s1-equivalence-example-internal" {
  allow {
    protocol = "tcp"
  }
  disabled      = false
  name          = "lb-health-checks-k8s1-equivalence-example-internal"
  network       = "default"
  source_ranges = ["35.191.0.0/16", "130.211.0.0/22", "209.85.204.0/22", "209.85.152.0/22"]
  target_tags   = ["k8s1-equivalence-example-internal-k8s-io-role-control-plane"]
}

resource "google_compute_firewall" "master-to-master-k8s1-equivalence-example-internal" {
  allow {
    protocol = "tcp"
  }
  allow {
    protocol = "udp"
  }
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "esp"
  }
  allow {
    protocol = "ah"
  }
  allow {
    protocol = "sctp"
  }
  disabled    = false
  name        = "master-to-master-k8s1-equivalence-example-internal"
  network     = "default"
  source_tags = ["k8s1-equivalence-example-internal-k8s-io-role-control-plane", "k8s1-equivalence-example-internal-k8s-io-role-master"]
  target_tags = ["k8s1-equivalence-example-internal-k8s-io-role-control-plane", "k8s1-equivalence-example-internal-k8s-io-role-master"]
}

resource "google_compute_firewall" "master-to-node-k8s1-equivalence-example-internal" {
  allow {
    protocol = "tcp"
  }
  allow {
    protocol = "udp"
  }
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "esp"
  }
  allow {
    protocol = "ah"
  }
  allow {
    protocol = "sctp"
  }
  disabled    = false
  name        = "master-to-node-k8s1-equivalence-example-internal"
  network     = "default"
  source_tags = ["k8s1-equivalence-example-internal-k8s-io-role-control-plane", "k8s1-equivalence-example-internal-k8s-io-role-master"]
  target_tags = ["k8s1-equivalence-example-internal-k8s-io-role-node"]
}

resource "google_compute_firewall" "node-to-master-k8s1-equivalence-example-internal" {
  allow {
    ports    = ["443"]
    protocol = "tcp"
  }
  allow {
    ports    = ["10250"]
    protocol = "tcp"
  }
  allow {
    ports    = ["3988"]
    protocol = "tcp"
  }
  allow {
    ports    = ["8472"]
    protocol = "udp"
  }
  disabled    = false
  name        = "node-to-master-k8s1-equivalence-example-internal"
  network     = "default"
  source_tags = ["k8s1-equivalence-example-internal-k8s-io-role-node"]
  target_tags = ["k8s1-equivalence-example-internal-k8s-io-role-control-plane", "k8s1-equivalence-example-internal-k8s-io-role-master"]
}

resource "google_compute_firewall" "node-to-node-k8s1-equivalence-example-internal" {
  allow {
    protocol = "tcp"
  }
  allow {
    protocol = "udp"
  }
  allow {
    protocol = "icmp"
  }
  allow {
    protocol = "esp"
  }
  allow {
    protocol = "ah"
  }
  allow {
    protocol = "sctp"
  }
  disabled    = false
  name        = "node-to-node-k8s1-equivalence-example-internal"
  network     = "default"
  source_tags = ["k8s1-equivalence-example-internal-k8s-io-role-node"]
  target_tags = ["k8s1-equivalence-example-internal-k8s-io-role-node"]
}

resource "google_compute_firewall" "nodeport-external-to-node-ipv6-k8s1-equivalence-example--5pdea1" {
  allow {
    ports    = ["30000-32767"]
    protocol = "tcp"
  }
  allow {
    ports    = ["30000-32767"]
    protocol = "udp"
  }
  disabled      = true
  name          = "nodeport-external-to-node-ipv6-k8s1-equivalence-example--5pdea1"
  network       = "default"
  source_ranges = ["::/0"]
  target_tags   = ["k8s1-equivalence-example-internal-k8s-io-role-node"]
}

resource "google_compute_firewall" "nodeport-external-to-node-k8s1-equivalence-example-internal" {
  allow {
    ports    = ["30000-32767"]
    protocol = "tcp"
  }
  allow {
    ports    = ["30000-32767"]
    protocol = "udp"
  }
  disabled      = true
  name          = "nodeport-external-to-node-k8s1-equivalence-example-internal"
  network       = "default"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["k8s1-equivalence-example-internal-k8s-io-role-node"]
}

resource "google_compute_firewall" "ssh-external-to-master-ipv6-k8s1-equivalence-example-internal" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  disabled      = true
  name          = "ssh-external-to-master-ipv6-k8s1-equivalence-example-internal"
  network       = "default"
  source_ranges = ["::/0"]
  target_tags   = ["k8s1-equivalence-example-internal-k8s-io-role-control-plane", "k8s1-equivalence-example-internal-k8s-io-role-master"]
}

resource "google_compute_firewall" "ssh-external-to-master-k8s1-equivalence-example-internal" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  disabled      = true
  name          = "ssh-external-to-master-k8s1-equivalence-example-internal"
  network       = "default"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["k8s1-equivalence-example-internal-k8s-io-role-control-plane", "k8s1-equivalence-example-internal-k8s-io-role-master"]
}

resource "google_compute_firewall" "ssh-external-to-node-ipv6-k8s1-equivalence-example-internal" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  disabled      = true
  name          = "ssh-external-to-node-ipv6-k8s1-equivalence-example-internal"
  network       = "default"
  source_ranges = ["::/0"]
  target_tags   = ["k8s1-equivalence-example-internal-k8s-io-role-node"]
}

resource "google_compute_firewall" "ssh-external-to-node-k8s1-equivalence-example-internal" {
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  disabled      = true
  name          = "ssh-external-to-node-k8s1-equivalence-example-internal"
  network       = "default"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["k8s1-equivalence-example-internal-k8s-io-role-node"]
}

resource "google_compute_forwarding_rule" "api-k8s1-equivalence-example-internal" {
  ip_address  = google_compute_address.api-k8s1-equivalence-example-internal.address
  ip_protocol = "TCP"
  labels = {
    "k8s-io-cluster-name" = "k8s1-equivalence-example-internal"
    "name"                = "api"
  }
  load_balancing_scheme = "EXTERNAL"
  name                  = "api-k8s1-equivalence-example-internal"
  port_range            = "443-443"
  target                = google_compute_target_pool.api-k8s1-equivalence-example-internal.self_link
}

resource "google_compute_forwarding_rule" "api-us-west1-k8s1-equivalence-example-internal" {
  backend_service = google_compute_region_backend_service.api-k8s1-equivalence-example-internal.id
  ip_address      = google_compute_address.api-us-west1-k8s1-equivalence-example-internal.address
  ip_protocol     = "TCP"
  labels = {
    "k8s-io-cluster-name" = "k8s1-equivalence-example-internal"
    "name"                = "api-us-west1"
  }
  load_balancing_scheme = "INTERNAL"
  name                  = "api-us-west1-k8s1-equivalence-example-internal"
  network               = "default"
  ports                 = ["443"]
  subnetwork            = google_compute_subnetwork.us-west1-k8s1-equivalence-example-internal.name
}

resource "google_compute_forwarding_rule" "kops-controller-us-west1-k8s1-equivalence-example-internal" {
  backend_service = google_compute_region_backend_service.api-k8s1-equivalence-example-internal.id
  ip_address      = google_compute_address.api-us-west1-k8s1-equivalence-example-internal.address
  ip_protocol     = "TCP"
  labels = {
    "k8s-io-cluster-name" = "k8s1-equivalence-example-internal"
    "name"                = "kops-controller-us-west1"
  }
  load_balancing_scheme = "INTERNAL"
  name                  = "kops-controller-us-west1-k8s1-equivalence-example-internal"
  network               = "default"
  ports                 = ["3988"]
  subnetwork            = google_compute_subnetwork.us-west1-k8s1-equivalence-example-internal.name
}

resource "google_compute_http_health_check" "api-k8s1-equivalence-example-internal" {
  name         = "api-k8s1-equivalence-example-internal"
  port         = 3990
  request_path = "/healthz"
}

resource "google_compute_instance_group_manager" "a-control-plane-us-west1-a-k8s1-equivalence-example-internal" {
  base_instance_name = "control-plane-us-west1-a"
  lifecycle {
    ignore_changes = [target_size]
  }
  list_managed_instances_results = "PAGINATED"
  name                           = "a-control-plane-us-west1-a-k8s1-equivalence-example-internal"
  target_pools                   = [google_compute_target_pool.api-k8s1-equivalence-example-internal.self_link]
  target_size                    = 1
  update_policy {
    max_unavailable_fixed = 1
    minimal_action        = "REPLACE"
    type                  = "OPPORTUNISTIC"
  }
  version {
    instance_template = google_compute_instance_template.control-plane-us-west1-a-k8s1-equivalence-example-internal.self_link
  }
  zone = "us-west1-a"
}

resource "google_compute_instance_group_manager" "a-nodes-us-west1-a-k8s1-equivalence-example-internal" {
  base_instance_name = "nodes-us-west1-a"
  lifecycle {
    ignore_changes = [target_size]
  }
  list_managed_instances_results = "PAGINATED"
  name                           = "a-nodes-us-west1-a-k8s1-equivalence-example-internal"
  target_size                    = 1
  update_policy {
    max_unavailable_fixed = 1
    minimal_action        = "REPLACE"
    type                  = "OPPORTUNISTIC"
  }
  version {
    instance_template = google_compute_instance_template.nodes-us-west1-a-k8s1-equivalence-example-internal.self_link
  }
  zone = "us-west1-a"
}

resource "google_compute_instance_group_manager" "b-control-plane-us-west1-b-k8s1-equivalence-example-internal" {
  base_instance_name = "control-plane-us-west1-b"
  lifecycle {
    ignore_changes = [target_size]
  }
  list_managed_instances_results = "PAGINATED"
  name                           = "b-control-plane-us-west1-b-k8s1-equivalence-example-internal"
  target_pools                   = [google_compute_target_pool.api-k8s1-equivalence-example-internal.self_link]
  target_size                    = 1
  update_policy {
    max_unavailable_fixed = 1
    minimal_action        = "REPLACE"
    type                  = "OPPORTUNISTIC"
  }
  version {
    instance_template = google_compute_instance_template.control-plane-us-west1-b-k8s1-equivalence-example-internal.self_link
  }
  zone = "us-west1-b"
}

resource "google_compute_instance_group_manager" "b-nodes-us-west1-b-k8s1-equivalence-example-internal" {
  base_instance_name = "nodes-us-west1-b"
  lifecycle {
    ignore_changes = [target_size]
  }
  list_managed_instances_results = "PAGINATED"
  name                           = "b-nodes-us-west1-b-k8s1-equivalence-example-internal"
  target_size                    = 1
  update_policy {
    max_unavailable_fixed = 1
    minimal_action        = "REPLACE"
    type                  = "OPPORTUNISTIC"
  }
  version {
    instance_template = google_compute_instance_template.nodes-us-west1-b-k8s1-equivalence-example-internal.self_link
  }
  zone = "us-west1-b"
}

resource "google_compute_instance_group_manager" "c-control-plane-us-west1-c-k8s1-equivalence-example-internal" {
  base_instance_name = "control-plane-us-west1-c"
  lifecycle {
    ignore_changes = [target_size]
  }
  list_managed_instances_results = "PAGINATED"
  name                           = "c-control-plane-us-west1-c-k8s1-equivalence-example-internal"
  target_pools                   = [google_compute_target_pool.api-k8s1-equivalence-example-internal.self_link]
  target_size                    = 1
  update_policy {
    max_unavailable_fixed = 1
    minimal_action        = "REPLACE"
    type                  = "OPPORTUNISTIC"
  }
  version {
    instance_template = google_compute_instance_template.control-plane-us-west1-c-k8s1-equivalence-example-internal.self_link
  }
  zone = "us-west1-c"
}

resource "google_compute_instance_group_manager" "c-nodes-us-west1-c-k8s1-equivalence-example-internal" {
  base_instance_name = "nodes-us-west1-c"
  lifecycle {
    ignore_changes = [target_size]
  }
  list_managed_instances_results = "PAGINATED"
  name                           = "c-nodes-us-west1-c-k8s1-equivalence-example-internal"
  target_size                    = 1
  update_policy {
    max_unavailable_fixed = 1
    minimal_action        = "REPLACE"
    type                  = "OPPORTUNISTIC"
  }
  version {
    instance_template = google_compute_instance_template.nodes-us-west1-c-k8s1-equivalence-example-internal.self_link
  }
  zone = "us-west1-c"
}

resource "google_compute_instance_template" "control-plane-us-west1-a-k8s1-equivalence-example-internal" {
  can_ip_forward = true
  disk {
    auto_delete            = true
    boot                   = true
    device_name            = "persistent-disks-0"
    disk_name              = ""
    disk_size_gb           = 64
    disk_type              = "pd-standard"
    interface              = ""
    mode                   = "READ_WRITE"
    provisioned_iops       = 0
    provisioned_throughput = 0
    source                 = ""
    source_image           = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/ubuntu-2404-noble-amd64-v20250606"
    type                   = "PERSISTENT"
  }
  labels = {
    "k8s-io-cluster-name"       = "k8s1-equivalence-example-internal"
    "k8s-io-instance-group"     = "control-plane-us-west1-a"
    "k8s-io-role-control-plane" = "control-plane"
    "k8s-io-role-master"        = "master"
  }
  lifecycle {
    create_before_destroy = true
  }
  machine_type = "e2-medium"
  metadata = {
    "cluster-name"                    = "k8s1.equivalence.example.internal"
    "kops-k8s-io-instance-group-name" = "control-plane-us-west1-a"
    "user-data"                       = file("${path.module}/data/google_compute_instance_template_control-plane-us-west1-a-k8s1-equivalence-example-internal_metadata_user-data")
  }
  name_prefix = "control-plane-us-west1-a--rc6ris-"
  network_interface {
    network    = "default"
    stack_type = "IPV4_ONLY"
    subnetwork = google_compute_subnetwork.us-west1-k8s1-equivalence-example-internal.name
  }
  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    preemptible         = false
    provisioning_model  = "STANDARD"
  }
  service_account {
    email  = google_service_account.control-plane.email
    scopes = ["https://www.googleapis.com/auth/compute", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/cloud-platform", "https://www.googleapis.com/auth/devstorage.read_write", "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
  }
  tags = ["k8s1-equivalence-example-internal-k8s-io-role-control-plane", "k8s1-equivalence-example-internal-k8s-io-role-master"]
}

resource "google_compute_instance_template" "control-plane-us-west1-b-k8s1-equivalence-example-internal" {
  can_ip_forward = true
  disk {
    auto_delete            = true
    boot                   = true
    device_name            = "persistent-disks-0"
    disk_name              = ""
    disk_size_gb           = 64
    disk_type              = "pd-standard"
    interface              = ""
    mode                   = "READ_WRITE"
    provisioned_iops       = 0
    provisioned_throughput = 0
    source                 = ""
    source_image           = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/ubuntu-2404-noble-amd64-v20250606"
    type                   = "PERSISTENT"
  }
  labels = {
    "k8s-io-cluster-name"       = "k8s1-equivalence-example-internal"
    "k8s-io-instance-group"     = "control-plane-us-west1-b"
    "k8s-io-role-control-plane" = "control-plane"
    "k8s-io-role-master"        = "master"
  }
  lifecycle {
    create_before_destroy = true
  }
  machine_type = "e2-medium"
  metadata = {
    "cluster-name"                    = "k8s1.equivalence.example.internal"
    "kops-k8s-io-instance-group-name" = "control-plane-us-west1-b"
    "user-data"                       = file("${path.module}/data/google_compute_instance_template_control-plane-us-west1-b-k8s1-equivalence-example-internal_metadata_user-data")
  }
  name_prefix = "control-plane-us-west1-b--h02o8r-"
  network_interface {
    network    = "default"
    stack_type = "IPV4_ONLY"
    subnetwork = google_compute_subnetwork.us-west1-k8s1-equivalence-example-internal.name
  }
  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    preemptible         = false
    provisioning_model  = "STANDARD"
  }
  service_account {
    email  = google_service_account.control-plane.email
    scopes = ["https://www.googleapis.com/auth/compute", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/cloud-platform", "https://www.googleapis.com/auth/devstorage.read_write", "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
  }
  tags = ["k8s1-equivalence-example-internal-k8s-io-role-control-plane", "k8s1-equivalence-example-internal-k8s-io-role-master"]
}

resource "google_compute_instance_template" "control-plane-us-west1-c-k8s1-equivalence-example-internal" {
  can_ip_forward = true
  disk {
    auto_delete            = true
    boot                   = true
    device_name            = "persistent-disks-0"
    disk_name              = ""
    disk_size_gb           = 64
    disk_type              = "pd-standard"
    interface              = ""
    mode                   = "READ_WRITE"
    provisioned_iops       = 0
    provisioned_throughput = 0
    source                 = ""
    source_image           = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/ubuntu-2404-noble-amd64-v20250606"
    type                   = "PERSISTENT"
  }
  labels = {
    "k8s-io-cluster-name"       = "k8s1-equivalence-example-internal"
    "k8s-io-instance-group"     = "control-plane-us-west1-c"
    "k8s-io-role-control-plane" = "control-plane"
    "k8s-io-role-master"        = "master"
  }
  lifecycle {
    create_before_destroy = true
  }
  machine_type = "e2-medium"
  metadata = {
    "cluster-name"                    = "k8s1.equivalence.example.internal"
    "kops-k8s-io-instance-group-name" = "control-plane-us-west1-c"
    "user-data"                       = file("${path.module}/data/google_compute_instance_template_control-plane-us-west1-c-k8s1-equivalence-example-internal_metadata_user-data")
  }
  name_prefix = "control-plane-us-west1-c--gbuta4-"
  network_interface {
    network    = "default"
    stack_type = "IPV4_ONLY"
    subnetwork = google_compute_subnetwork.us-west1-k8s1-equivalence-example-internal.name
  }
  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    preemptible         = false
    provisioning_model  = "STANDARD"
  }
  service_account {
    email  = google_service_account.control-plane.email
    scopes = ["https://www.googleapis.com/auth/compute", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/cloud-platform", "https://www.googleapis.com/auth/devstorage.read_write", "https://www.googleapis.com/auth/ndev.clouddns.readwrite"]
  }
  tags = ["k8s1-equivalence-example-internal-k8s-io-role-control-plane", "k8s1-equivalence-example-internal-k8s-io-role-master"]
}

resource "google_compute_instance_template" "nodes-us-west1-a-k8s1-equivalence-example-internal" {
  can_ip_forward = true
  disk {
    auto_delete            = true
    boot                   = true
    device_name            = "persistent-disks-0"
    disk_name              = ""
    disk_size_gb           = 128
    disk_type              = "pd-standard"
    interface              = ""
    mode                   = "READ_WRITE"
    provisioned_iops       = 0
    provisioned_throughput = 0
    source                 = ""
    source_image           = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/ubuntu-2404-noble-amd64-v20250606"
    type                   = "PERSISTENT"
  }
  labels = {
    "k8s-io-cluster-name"   = "k8s1-equivalence-example-internal"
    "k8s-io-instance-group" = "nodes-us-west1-a"
    "k8s-io-role-node"      = "node"
  }
  lifecycle {
    create_before_destroy = true
  }
  machine_type = "e2-medium"
  metadata = {
    "cluster-name"                    = "k8s1.equivalence.example.internal"
    "kops-k8s-io-instance-group-name" = "nodes-us-west1-a"
    "kube-env"                        = "AUTOSCALER_ENV_VARS: os_distribution=ubuntu;arch=amd64;os=linux"
    "user-data"                       = file("${path.module}/data/google_compute_instance_template_nodes-us-west1-a-k8s1-equivalence-example-internal_metadata_user-data")
  }
  name_prefix = "nodes-us-west1-a-k8s1-equ-082h6h-"
  network_interface {
    network    = "default"
    stack_type = "IPV4_ONLY"
    subnetwork = google_compute_subnetwork.us-west1-k8s1-equivalence-example-internal.name
  }
  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    preemptible         = false
    provisioning_model  = "STANDARD"
  }
  service_account {
    email  = google_service_account.node.email
    scopes = ["https://www.googleapis.com/auth/compute", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/cloud-platform", "https://www.googleapis.com/auth/devstorage.read_only"]
  }
  tags = ["k8s1-equivalence-example-internal-k8s-io-role-node"]
}

resource "google_compute_instance_template" "nodes-us-west1-b-k8s1-equivalence-example-internal" {
  can_ip_forward = true
  disk {
    auto_delete            = true
    boot                   = true
    device_name            = "persistent-disks-0"
    disk_name              = ""
    disk_size_gb           = 128
    disk_type              = "pd-standard"
    interface              = ""
    mode                   = "READ_WRITE"
    provisioned_iops       = 0
    provisioned_throughput = 0
    source                 = ""
    source_image           = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/ubuntu-2404-noble-amd64-v20250606"
    type                   = "PERSISTENT"
  }
  labels = {
    "k8s-io-cluster-name"   = "k8s1-equivalence-example-internal"
    "k8s-io-instance-group" = "nodes-us-west1-b"
    "k8s-io-role-node"      = "node"
  }
  lifecycle {
    create_before_destroy = true
  }
  machine_type = "e2-medium"
  metadata = {
    "cluster-name"                    = "k8s1.equivalence.example.internal"
    "kops-k8s-io-instance-group-name" = "nodes-us-west1-b"
    "kube-env"                        = "AUTOSCALER_ENV_VARS: os_distribution=ubuntu;arch=amd64;os=linux"
    "user-data"                       = file("${path.module}/data/google_compute_instance_template_nodes-us-west1-b-k8s1-equivalence-example-internal_metadata_user-data")
  }
  name_prefix = "nodes-us-west1-b-k8s1-equ-01o9jq-"
  network_interface {
    network    = "default"
    stack_type = "IPV4_ONLY"
    subnetwork = google_compute_subnetwork.us-west1-k8s1-equivalence-example-internal.name
  }
  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    preemptible         = false
    provisioning_model  = "STANDARD"
  }
  service_account {
    email  = google_service_account.node.email
    scopes = ["https://www.googleapis.com/auth/compute", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/cloud-platform", "https://www.googleapis.com/auth/devstorage.read_only"]
  }
  tags = ["k8s1-equivalence-example-internal-k8s-io-role-node"]
}

resource "google_compute_instance_template" "nodes-us-west1-c-k8s1-equivalence-example-internal" {
  can_ip_forward = true
  disk {
    auto_delete            = true
    boot                   = true
    device_name            = "persistent-disks-0"
    disk_name              = ""
    disk_size_gb           = 128
    disk_type              = "pd-standard"
    interface              = ""
    mode                   = "READ_WRITE"
    provisioned_iops       = 0
    provisioned_throughput = 0
    source                 = ""
    source_image           = "https://www.googleapis.com/compute/v1/projects/ubuntu-os-cloud/global/images/ubuntu-2404-noble-amd64-v20250606"
    type                   = "PERSISTENT"
  }
  labels = {
    "k8s-io-cluster-name"   = "k8s1-equivalence-example-internal"
    "k8s-io-instance-group" = "nodes-us-west1-c"
    "k8s-io-role-node"      = "node"
  }
  lifecycle {
    create_before_destroy = true
  }
  machine_type = "e2-medium"
  metadata = {
    "cluster-name"                    = "k8s1.equivalence.example.internal"
    "kops-k8s-io-instance-group-name" = "nodes-us-west1-c"
    "kube-env"                        = "AUTOSCALER_ENV_VARS: os_distribution=ubuntu;arch=amd64;os=linux"
    "user-data"                       = file("${path.module}/data/google_compute_instance_template_nodes-us-west1-c-k8s1-equivalence-example-internal_metadata_user-data")
  }
  name_prefix = "nodes-us-west1-c-k8s1-equ-k6036m-"
  network_interface {
    network    = "default"
    stack_type = "IPV4_ONLY"
    subnetwork = google_compute_subnetwork.us-west1-k8s1-equivalence-example-internal.name
  }
  scheduling {
    automatic_restart   = true
    on_host_maintenance = "MIGRATE"
    preemptible         = false
    provisioning_model  = "STANDARD"
  }
  service_account {
    email  = google_service_account.node.email
    scopes = ["https://www.googleapis.com/auth/compute", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/cloud-platform", "https://www.googleapis.com/auth/devstorage.read_only"]
  }
  tags = ["k8s1-equivalence-example-internal-k8s-io-role-node"]
}

resource "google_compute_region_backend_service" "api-k8s1-equivalence-example-internal" {
  backend {
    balancing_mode = "CONNECTION"
    group          = google_compute_instance_group_manager.a-control-plane-us-west1-a-k8s1-equivalence-example-internal.instance_group
  }
  backend {
    balancing_mode = "CONNECTION"
    group          = google_compute_instance_group_manager.b-control-plane-us-west1-b-k8s1-equivalence-example-internal.instance_group
  }
  backend {
    balancing_mode = "CONNECTION"
    group          = google_compute_instance_group_manager.c-control-plane-us-west1-c-k8s1-equivalence-example-internal.instance_group
  }
  health_checks         = [google_compute_region_health_check.api-k8s1-equivalence-example-internal.id]
  load_balancing_scheme = "INTERNAL"
  name                  = "api-k8s1-equivalence-example-internal"
  protocol              = "TCP"
}

resource "google_compute_region_health_check" "api-k8s1-equivalence-example-internal" {
  name = "api-k8s1-equivalence-example-internal"
  tcp_health_check {
    port = 443
  }
}

resource "google_compute_router" "nat-k8s1-equivalence-example-internal" {
  name    = "nat-k8s1-equivalence-example-internal"
  network = "default"
}

resource "google_compute_router_nat" "nat-k8s1-equivalence-example-internal" {
  name                               = "nat-k8s1-equivalence-example-internal"
  nat_ip_allocate_option             = "AUTO_ONLY"
  region                             = "us-west1"
  router                             = google_compute_router.nat-k8s1-equivalence-example-internal.name
  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  subnetwork {
    name                    = google_compute_subnetwork.us-west1-k8s1-equivalence-example-internal.name
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }
}

resource "google_compute_subnetwork" "us-west1-k8s1-equivalence-example-internal" {
  ip_cidr_range = "10.0.16.0/20"
  name          = "us-west1-k8s1-equivalence-example-internal"
  network       = "default"
  region        = "us-west1"
  stack_type    = "IPV4_ONLY"
}

resource "google_compute_target_pool" "api-k8s1-equivalence-example-internal" {
  health_checks = [google_compute_http_health_check.api-k8s1-equivalence-example-internal.self_link]
  name          = "api-k8s1-equivalence-example-internal"
}

resource "google_project_iam_member" "serviceaccount-control-plane" {
  member  = format("serviceAccount:%s", google_service_account.control-plane.email)
  project = "example-project"
  role    = "roles/container.serviceAgent"
}

resource "google_project_iam_member" "serviceaccount-nodes" {
  member  = format("serviceAccount:%s", google_service_account.node.email)
  project = "example-project"
  role    = "roles/compute.viewer"
}

resource "google_service_account" "control-plane" {
  account_id   = "control-plane-k8s1-equi-5pdea1"
  description  = "kubernetes control-plane instances"
  display_name = "control-plane"
  project      = "example-project"
}

resource "google_service_account" "node" {
  account_id   = "node-k8s1-equivalence-e-5pdea1"
  description  = "kubernetes worker nodes"
  display_name = "node"
  project      = "example-project"
}

terraform {
  required_version = ">= 0.15.0"
  required_providers {
    aws = {
      "configuration_aliases" = [aws.files]
      "source"                = "hashicorp/aws"
      "version"               = ">= 5.0.0"
    }
    google = {
      "source"  = "hashicorp/google"
      "version" = ">= 5.11.0"
    }
  }
}
