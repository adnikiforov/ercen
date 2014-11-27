-module(ercen_root_controller, [Req]).
-compile(export_all).

index('GET', []) ->
  {ok, []}.
%%   {output, "<strong>Ercen root page says hello!</strong>"}.

