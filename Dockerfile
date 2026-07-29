FROM launchdarkly/ld-find-code-refs-github-action:2.16.0@sha256:ab55022f120a501d6f29ffb5edd1e0c0face9090b9ae29b3b77d952e878f3c8d

LABEL com.github.actions.name="LaunchDarkly Code References"
LABEL com.github.actions.description="Find references to feature flags in your code."
LABEL com.github.actions.icon="toggle-right"
LABEL com.github.actions.color="gray-dark"
LABEL homepage="https://www.launchdarkly.com"

ENTRYPOINT ["/ld-find-code-refs-github-action"]
