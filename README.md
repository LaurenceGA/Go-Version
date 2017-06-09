# Go-Version
Versioning system for Go projects


This can't be used as a normal package, it is intened to be a submodule of a normal go project.

## Useage
Run "go generate ./Go-Version" to auto-generate a Version constant.

This can then be accessed in a go project using:
```Go
import version

var version = version.Version   // String constant
```

Must be a git repository. The version number is based off the most recent git tag plus the number of commits that have been made since that tag.
