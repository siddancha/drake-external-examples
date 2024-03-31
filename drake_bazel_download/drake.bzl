def _impl(repo_ctx):
    # DRAKE_PRECOMPILED_PATH = repo_ctx.getenv("DRAKE_PRECOMPILED_PATH")
    # if DRAKE_PRECOMPILED_PATH == None:
    #     fail("DRAKE_PRECOMPILED_PATH is not set")

    DRAKE_PRECOMPILED_PATH = "/home/sancha/Downloads/drake-1.27.0-jammy/drake"
    repo_ctx.symlink(DRAKE_PRECOMPILED_PATH + "/include", "include")
    repo_ctx.symlink(DRAKE_PRECOMPILED_PATH + "/lib", "lib")
    repo_ctx.symlink(DRAKE_PRECOMPILED_PATH + "/share", "share")
    repo_ctx.symlink(Label("@//:drake.BUILD.bazel"), "BUILD.bazel")

local_drake_repository = repository_rule(
    implementation = _impl,
)
