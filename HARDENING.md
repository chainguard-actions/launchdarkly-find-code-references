<!-- markdownlint-disable -->

# Hardening Report: launchdarkly--find-code-references/v2.16.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **launchdarkly--find-code-references/v2.16.0** was hardened automatically. 2 finding(s) were identified and resolved across 2 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The workflow file references two Actions by mutable tags/branches instead of pinned full-length commit SHAs, making the workflow vulnerable to supply-chain attacks if those tags or branches are moved or compromised: `uses: actions/checkout@v4` (tag `v4` is mutable) and `uses: launchdarkly/find-code-references@main` (branch `main` is mutable). Both should be pinned to a full 40-character hex commit SHA (e.g. `actions/checkout@11bd71901bbe5b1630ceea73d27597364c9af683 # v4`).

Locations:

- `.github/workflows/find-code-refs.yml:14`
- `.github/workflows/find-code-refs.yml:17`

### missing-permissions (severity: medium)

The workflow file has no top-level `permissions:` key, and the only job (`launchDarklyCodeReferences`) also has no job-level `permissions:` key. Without explicit permissions, the workflow inherits the repository default token permissions, which may be overly broad. A minimal `permissions:` block (e.g. `contents: read`) should be added at the top level or on the job.

Locations:

- `.github/workflows/find-code-refs.yml:1`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses, missing-permissions

**Notes:**

Fixed `.github/workflows/find-code-refs.yml`: (1) Pinned `actions/checkout@v4` to full SHA `11d5960a326750d5838078e36cf38b85af677262 # v4`; (2) Pinned `launchdarkly/find-code-references@main` to full SHA `a68d7da46aeffd66af43253b2d3619914508235b # main`; (3) Added top-level `permissions: contents: read` block to restrict the workflow token to the minimum required permissions.

### Iteration 2

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Dockerfile base image `launchdarkly/ld-find-code-refs-github-action:2.16.0` to its immutable SHA256 digest: `launchdarkly/ld-find-code-refs-github-action:2.16.0@sha256:ab55022f120a501d6f29ffb5edd1e0c0face9090b9ae29b3b77d952e878f3c8d`. The tag is kept inline alongside the digest for readability.

