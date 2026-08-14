<!-- markdownlint-disable -->

# Hardening Report: launchdarkly--find-code-references/v2.17.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **launchdarkly--find-code-references/v2.17.0** was hardened automatically. 2 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The workflow file references actions by mutable tag/branch refs instead of pinned full-length SHA commits. 'actions/checkout@v4' uses a tag and 'launchdarkly/find-code-references@main' uses a branch name. Either could be silently updated to point to malicious code. Both should be pinned to a full 40-character commit SHA (e.g. actions/checkout@11bd71901bbe5b1630ceea73d27597364c9af683 # v4).

Locations:

- `.github/workflows/find-code-refs.yml:12`
- `.github/workflows/find-code-refs.yml:15`

### missing-permissions (severity: medium)

The workflow file '.github/workflows/find-code-refs.yml' has no top-level 'permissions:' key and no job-level 'permissions:' key on any job. Without explicit permissions, the GITHUB_TOKEN is granted its default (potentially broad) permissions. A minimal permissions block (e.g. 'permissions: contents: read') should be added at the top level or on each job.

Locations:

- `.github/workflows/find-code-refs.yml:1`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses, missing-permissions

**Notes:**

Fixed .github/workflows/find-code-refs.yml: (1) Pinned actions/checkout@v4 to full SHA 11d5960a326750d5838078e36cf38b85af677262 # v4; (2) Pinned launchdarkly/find-code-references@main to full SHA 088563c86407b01ad1bc8d9594661b228ed4324d # main; (3) Added top-level 'permissions: contents: read' block to restrict GITHUB_TOKEN to the minimum required.

