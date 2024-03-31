def _impl(repo_ctx):
    DRAKE_PRECOMPILED_PATH = "/home/sancha/repos/QR/.venv"
    repo_ctx.symlink(DRAKE_PRECOMPILED_PATH + "/include", "include")
    repo_ctx.symlink(DRAKE_PRECOMPILED_PATH + "/lib", "lib")
    repo_ctx.symlink(DRAKE_PRECOMPILED_PATH + "/share", "share")
    repo_ctx.symlink(Label("@//:drake.BUILD.bazel"), "BUILD.bazel")

local_drake_repository = repository_rule(
    implementation = _impl,
)
