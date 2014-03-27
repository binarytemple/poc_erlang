-module(my_sum).
%-export([do_sum2/2]).

do_sum2(0, Total) -> Total.
do_sum2(N, Total) -> do_sum(N-1, Total+N).
