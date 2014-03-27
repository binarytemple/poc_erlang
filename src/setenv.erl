%% Set an environmental variable manually using the application module.

Res1 = application:set_env(basho_bench, <<"x">>, <<"y">>).

%% Create a helper function which reduces the arity by 33% 

Set = fun(Key,Value) -> ok = application:set_env(basho_bench, Key, Value) end .

%% Set a value using the newly defined helper function

Res2 = Set(<<"foo">>,<<"bar">>).

%% Assert that the value has been correctly set

{ok,<<"bar">>} = application:get_env(basho_bench,<<"foo">>).
