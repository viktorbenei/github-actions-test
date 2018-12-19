workflow "New workflow" {
  on = "push"
  resolves = [
    "GitHub Action for npm",
    "GitHub Action for Docker",
    "shell",
  ]
}

action "GitHub Action for npm" {
  uses = "actions/npm@c555744"
}

action "GitHub Action for Docker" {
  uses = "actions/docker/cli@76ff57a"
}

action "shell" {
  uses = "./action-a/"
  runs = "bitrise run primary"
}
