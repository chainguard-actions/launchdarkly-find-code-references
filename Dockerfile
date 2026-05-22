FROM launchdarkly/ld-find-code-refs-github-action@sha256:339db652eb887508860e399db2f389043372f19ff8e73c5422b66c12b29071bc # 2.11.9

LABEL com.github.actions.name="LaunchDarkly Code References"
LABEL com.github.actions.description="Find references to feature flags in your code."
LABEL com.github.actions.icon="toggle-right"
LABEL com.github.actions.color="gray-dark"
LABEL homepage="https://www.launchdarkly.com"

ENTRYPOINT ["/ld-find-code-refs-github-action"]
