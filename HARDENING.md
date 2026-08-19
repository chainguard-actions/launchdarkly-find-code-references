<!-- markdownlint-disable -->

# Hardening Report: launchdarkly--find-code-references/v2.11.10

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `1`

Action **launchdarkly--find-code-references/v2.11.10** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Dockerfile's FROM instruction references a mutable image tag (`launchdarkly/ld-find-code-refs-github-action:2.11.10`) instead of a SHA digest. This means the base image can be silently replaced with a different (potentially malicious) image without changing the tag, creating a supply-chain risk. It should be pinned to a specific SHA digest, e.g. `launchdarkly/ld-find-code-refs-github-action@sha256:<64-hex-char-digest>`.

Locations:

- `Dockerfile:1`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Dockerfile FROM instruction from `launchdarkly/ld-find-code-refs-github-action:2.11.10` to `launchdarkly/ld-find-code-refs-github-action@sha256:e9457d4756e5c53b5c2d80b429bebb7fd64f16f5d8ff1ee6d378781ac83928a3 # 2.11.10`. The SHA digest was resolved via the Docker Registry HTTP API v2.

