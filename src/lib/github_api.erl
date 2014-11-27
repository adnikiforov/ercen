-module(github_api).
-export([check_repository_exists/2]).
-include("github_api.hrl").

check_repository_exists(RepoOwner, RepoName) ->
  {ok, Code, _Headers, _Body} = ibrowse:send_req(?GITHUB_GET_REPO ++ RepoOwner ++ "/" ++ RepoName,
    [{"User-Agent", "UA"}], get),
  case Code of
    "200" -> ok;
    _Any -> error
  end.
