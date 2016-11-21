# Gitlab Merge Reuqest Concourse Resource

A concourse resource to check for new merge requests on GitLab.

Tested with Gitlab [6.8](https://github.com/gitlabhq/gitlabhq/tree/6-8-stable) only.

## Usage

```yaml
resource_types:
- name: merge-request
  type: docker-image
  source:
    repository: mastertinner/gitlab-merge-request-resource

resources:
- name: my-repo-mr
  type: merge-request
  source:
    gitlab_host: gitlab.swisscloud.io
    project_id: 123
    project_path: myname/myproject
    private_token: XXX
    username: my_username
    password: xxx
```

* `gitlab_host` is the host of your GitLab server (without the `https://`)
* `project_path` is the ID or path of your project
* `private_token` is your GitLab user's private token (can be found in your profile)
* `username` is the username for HTTP(S) auth when pulling
* `password` is the password for HTTP(S) auth when pulling

## Find Docker Image

Check <https://store.docker.com/community/images/mastertinner/gitlab-merge-request-resource>

## Build Docker Image

1. Run `docker build -t gitlab-merge-request-resource .`
