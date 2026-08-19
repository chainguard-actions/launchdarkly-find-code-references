<!-- markdownlint-disable -->

# Hardening Report: launchdarkly--find-code-references/v2.11.9

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **launchdarkly--find-code-references/v2.11.9** was hardened automatically. 2 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The workflow file contains two unpinned `uses:` references that use mutable tags/branches instead of full 40-character commit SHAs, making the workflow vulnerable to supply-chain attacks if those tags or branches are moved:
- Line 14: `uses: actions/checkout@v4` (mutable tag `v4`)
- Line 18: `uses: launchdarkly/find-code-references@main` (mutable branch `main`)

Locations:

- `.github/workflows/find-code-refs.yml:14`
- `.github/workflows/find-code-refs.yml:18`

### missing-permissions (severity: medium)

The workflow file `.github/workflows/find-code-refs.yml` has no top-level `permissions:` key, and the single job `launchDarklyCodeReferences` also has no job-level `permissions:` key. Without explicit permissions, the workflow inherits the default repository permissions (which may include broad write access), violating the principle of least privilege.

Locations:

- `.github/workflows/find-code-refs.yml:1`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses, missing-permissions

**Notes:**

Fixed both findings in .github/workflows/find-code-refs.yml: (1) Pinned actions/checkout@v4 to full SHA 11d5960a326750d5838078e36cf38b85af677262 and launchdarkly/find-code-references@main to full SHA 3836f3dea1fd3c80bd673cc0541d8bb91d2eed7c, preserving original tags/branch as inline comments. (2) Added top-level `permissions: contents: read` block to enforce least-privilege access — only read access to repository contents is needed for the checkout step.

