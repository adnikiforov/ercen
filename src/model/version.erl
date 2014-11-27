-module(version, [
Id :: integer(),
Name :: string(),
ReleaseDate :: datetime(),
VersionTypeId :: integer(),
PackageId :: integer()
]).
-compile(export_all).

-belongs_to(version_type).
-belongs_to(package).