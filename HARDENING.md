# Hardening Report: launchdarkly--find-code-references/v2.12.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `ff50f15e4b79bfbf764dafdfd2579175a6ea9771`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `1`

Action **launchdarkly--find-code-references/v2.12.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Dockerfile used by this Docker-based action references the base image `launchdarkly/ld-find-code-refs-github-action:2.12.0` using a mutable version tag instead of an immutable SHA digest. If the tag is moved or the registry is compromised, the action could silently execute different code. The image reference should be pinned to a full SHA256 digest, e.g. `launchdarkly/ld-find-code-refs-github-action@sha256:<64-hex-char-digest> # 2.12.0`.

Locations:

- `Dockerfile:1`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Dockerfile base image from the mutable tag `launchdarkly/ld-find-code-refs-github-action:2.12.0` to the immutable SHA256 digest `launchdarkly/ld-find-code-refs-github-action@sha256:81da76dabd758b6e6a7e92300a6ed23377171256127593b41a09820327d5336f # 2.12.0`. The tag is preserved as a comment for readability.

