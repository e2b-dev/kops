/*
Copyright 2024 The Kubernetes Authors.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

package gcetasks

import (
	"testing"

	compute "google.golang.org/api/compute/v1"
)

// TestAddNetworksRendersAliasIPRanges verifies that the Terraform renderer emits
// the network_interface.alias_ip_range block for the GCP-native (IP-alias) CNI.
// Regression test: the renderer previously dropped AliasIpRanges, which left
// nodes without a pod CIDR and stuck NotReady ("cni plugin not initialized").
func TestAddNetworksRendersAliasIPRanges(t *testing.T) {
	stackType := "IPV4_ONLY"
	nis := []*compute.NetworkInterface{
		{
			AliasIpRanges: []*compute.AliasIpRange{
				{
					SubnetworkRangeName: "pods-minimal-gce-example-com",
					IpCidrRange:         "/24",
				},
			},
		},
	}

	out := addNetworks(&stackType, nil, nil, nis)
	if len(out) != 1 {
		t.Fatalf("expected 1 network interface, got %d", len(out))
	}
	if len(out[0].AliasIPRange) != 1 {
		t.Fatalf("expected 1 alias_ip_range, got %d", len(out[0].AliasIPRange))
	}
	got := out[0].AliasIPRange[0]
	if got.SubnetworkRangeName != "pods-minimal-gce-example-com" {
		t.Errorf("subnetwork_range_name = %q, want %q", got.SubnetworkRangeName, "pods-minimal-gce-example-com")
	}
	if got.IPCIDRRange != "/24" {
		t.Errorf("ip_cidr_range = %q, want %q", got.IPCIDRRange, "/24")
	}
}
