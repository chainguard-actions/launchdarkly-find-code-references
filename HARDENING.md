# Hardening Report: launchdarkly--find-code-references/v2.11.9

> This file was generated automatically by the hardening agent.

**Policy SHA:** `ff50f15e4b79bfbf764dafdfd2579175a6ea9771`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `1`

Action **launchdarkly--find-code-references/v2.11.9** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Dockerfile pulls a Docker image using a mutable version tag rather than an immutable SHA digest. `FROM launchdarkly/ld-find-code-refs-github-action:2.11.9` should be pinned to a specific SHA256 digest (e.g. `FROM launchdarkly/ld-find-code-refs-github-action@sha256:<64-hex-char-digest> # 2.11.9`) to prevent supply-chain attacks via tag mutation.

Locations:

- `Dockerfile:1`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker base image in Dockerfile from `launchdarkly/ld-find-code-refs-github-action:2.11.9` to `launchdarkly/ld-find-code-refs-github-action@sha256:339db652eb887508860e399db2f389043372f19ff8e73c5422b66c12b29071bc # 2.11.9`. The SHA256 digest was resolved via the Docker Registry API to ensure it is accurate and immutable.

