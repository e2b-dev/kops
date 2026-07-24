# GCE kops-module equivalence fixture

This offline fixture exercises the GCE topology used by kops-module with
generic cluster and project identities. Regenerate it with:

```
HACK_UPDATE_EXPECTED_IN_PLACE=1 go test ./cmd/kops \
  -run '^TestGCEKopsModuleEquivalence$' -count=1
```

`golden-pki.json` contains public, deterministic test keys. They are committed
only to make generated node configuration reproducible and must never be used
for a real cluster.

The `aws_s3_object_*` files represent objects in the integration harness's
in-memory state store. They are expected for GCE Terraform fixtures and do not
exercise AWS infrastructure.
