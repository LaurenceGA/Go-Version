# acquire the version
if [ -z $(git tag) ]
then
	echo "no tags found!"
	version="unknown"
else
	tag_name=$(git describe --tags --abbrev=0)
	build_num=$(git rev-list $tag_name.. --count)
	version=$tag_name.$build_num
fi

echo "Setting version to $version"

echo "package version

// Version is the version description for the project
//go:generate bash getVersion.sh   ; DO NOT EDIT
const Version = \"$version\"" > version.go
