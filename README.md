# How to use this repo

- Fork this repo
- Modify pipeline.yml to replace any existing URI by the URI of your fork
- Deploy pipeline to Concourse

Now, whenever a new commit is pushed to your repo the pipeline will be triggered AND UPDATED automatically.
That is, any change to the pipeline.yml file will be automatically reflected in your Concourse instance.

# How to deploy a local Concourse

By opening your fork inside a Visual Studio Code - Remote Container
a local Concourse instance will be setup and available at http://localhost:8080

This demo pipeline will also be automatically set-up and available at:
http://localhost:8080/teams/main/pipelines/hello

# I don't know where to start

__Install Docker__

https://docs.docker.com/get-docker/

__Install Visual Studio Code__

https://code.visualstudio.com/Download

__Install Visual Studio Code - Remote Containers__

https://code.visualstudio.com/docs/remote/containers-tutorial

__Clone and Open your fork inside a Remote Container__

https://code.visualstudio.com/docs/remote/containers#_quick-start-open-an-existing-folder-in-a-container