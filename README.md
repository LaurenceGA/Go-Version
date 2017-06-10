# Go-Version
Versioning system for Go projects

This can't be used as a normal Go package, it is intened to be a submodule of a normal go project.

## Useage
Run `go generate <path>` to auto-generate a Version constant. Here path is the path to the version submodule.

### Warning
This must be run from the main project and not from within the submodule. If this is run from within the Go-Version submodule then the version will be based on the version of Go-Version instead of the actual project.

The Version constant can then be accessed in a go project using:
```Go
import version

var version = version.Version   // String constant
```

Note: import path will be different based on project path.

This can only really be used in a git repository. The version number is based off the most recent git tag plus the number of commits that have been made since that tag.
