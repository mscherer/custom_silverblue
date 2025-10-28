#!/bin/bash
VERSION=$1
FROM=$(skopeo inspect docker://quay.io/fedora-ostree-desktops/silverblue:${VERSION} --format "FROM {{.Name}}:${VERSION}@{{.Digest}}")
echo $FROM ; sed 1d Dockerfile  

