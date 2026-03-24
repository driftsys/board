# Format (dprint)
fmt:
    dprint fmt

# Lint (dprint check)
lint:
    dprint check

# Run all checks
build: lint

# Validate commits on branch and build — run before PR
verify:
    git std check --range main..HEAD
    just build
