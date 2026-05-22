FROM launchdarkly/ld-find-code-refs-github-action@sha256:e9457d4756e5c53b5c2d80b429bebb7fd64f16f5d8ff1ee6d378781ac83928a3 # 2.11.10

LABEL com.github.actions.name="LaunchDarkly Code References"
LABEL com.github.actions.description="Find references to feature flags in your code."
LABEL com.github.actions.icon="toggle-right"
LABEL com.github.actions.color="gray-dark"
LABEL homepage="https://www.launchdarkly.com"

ENTRYPOINT ["/ld-find-code-refs-github-action"]
