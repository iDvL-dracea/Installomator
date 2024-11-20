nodejs)
    name="nodejs"
    type="pkg"
    latest_version=$(curl -sL -w %{url_effective} -o /dev/null https://nodejs.org/dist/latest/)
    version_number=$(basename "$latest_version")
    appNewVersion="${version_number}"
    appCustomVersion() {/usr/local/bin/node -v 2>/dev/null || echo "Not installed"}
    downloadURL="${latest_version}node-${appNewVersion}.pkg"
    expectedTeamID="HX7739G8FX"
    ;;