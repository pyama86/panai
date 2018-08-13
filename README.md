# panai

mruby network stat command.

# usage

Take 5 seconds statistics for eth0

```
$ panai eth0 5 | jq '. | map(select(.src_port != ":80" and .src_port != ":443")) | sort_by(.total_recv)'
```

# author

@pyama86
