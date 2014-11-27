-module(version_type, [
Id :: integer(),
Name :: string()
]).
-compile(export_all).

-has({versions, many, [{order_by, release_date}]}).