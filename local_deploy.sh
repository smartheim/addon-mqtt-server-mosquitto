PLATFORM_ARCHS="amd64 arm64 arm"
for arch in $PLATFORM_ARCHS; do
    podman build --rm -t test_$arch -f Dockerfile-$arch
done
buildah manifest create test test_amd64 test_arm64 test_arm

