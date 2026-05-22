FROM launchdarkly/ld-find-code-refs-github-action@sha256:81da76dabd758b6e6a7e92300a6ed23377171256127593b41a09820327d5336f # 2.12.0

LABEL com.github.actions.name="LaunchDarkly Code References"
LABEL com.github.actions.description="Find references to feature flags in your code."
LABEL com.github.actions.icon="toggle-right"
LABEL com.github.actions.color="gray-dark"
LABEL homepage="https://www.launchdarkly.com"

ENTRYPOINT ["/ld-find-code-refs-github-action"]
