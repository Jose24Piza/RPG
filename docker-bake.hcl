target "build" {
  dockerfile = "Dockerfile"
  args = {
    NODE_ENV = "production"
  }
  platforms = ["linux/amd64"]
}

target "validate-build" {
  inherits = ["build"]
  call = "check"
}