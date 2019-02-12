workflow "Lint on push" {
  on = "push"
  resolves = "lint"
}

action "lint" {
  uses = "nunofgs/eslint-action@enhancement/convert-to-probot-app"
  secrets = ["GITHUB_TOKEN"]
}
