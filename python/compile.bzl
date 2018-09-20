load("//:compile.bzl", "proto_compile")

def py_proto_compile(**kwargs):
    proto_compile(
        plugins = [str(Label("//python:python"))],
        **kwargs
    )

def grpc_py_proto_compile(**kwargs):
    proto_compile(
        plugins = [str(Label("//python:python")), str(Label("//python:grpc_python"))],
        **kwargs
    )