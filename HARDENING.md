# Hardening Report: launchdarkly--find-code-references/v2.11.10

> This file was generated automatically by the hardening agent.

**Policy SHA:** `ff50f15e4b79bfbf764dafdfd2579175a6ea9771`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `1`

Action **launchdarkly--find-code-references/v2.11.10** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Dockerfile references the base image `launchdarkly/ld-find-code-refs-github-action:2.11.10` using a mutable version tag instead of an immutable SHA digest. This is a supply-chain risk: the tag could be overwritten with a malicious image. The FROM line should use a SHA digest, e.g. `FROM launchdarkly/ld-find-code-refs-github-action@sha256:<64-hex-char-digest> # 2.11.10`.

Locations:

- `Dockerfile:1`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Updated the Dockerfile FROM line to use the immutable SHA256 digest instead of the mutable tag `2.11.10`. Changed `FROM launchdarkly/ld-find-code-refs-github-action:2.11.10` to `FROM launchdarkly/ld-find-code-refs-github-action@sha256:e9457d4756e5c53b5c2d80b429bebb7fd64f16f5d8ff1ee6d378781ac83928a3 # 2.11.10`. The tag is preserved as a comment for human readability.

