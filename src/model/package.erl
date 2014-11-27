-module(package, [
Id :: integer(),
RepositoryOwner :: string(),
RepositoryName :: string(),
Viewers :: integer(),
Stars :: integer(),
Forks :: integer(),
Description :: string(),
PackageRepoTypeId :: integer(),
CreatedAt :: datetime()
]).
-compile(export_all).

-belongs_to(package_repo_type).
-has({version, many}).
