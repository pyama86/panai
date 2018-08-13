# panai

mruby network stat command.

# usage

Take 5 seconds statistics for eth0

```
$ panai eth0 5 | jq '. | map(select(.src_port != ":80" and .src_port != ":443")) | sort_by(.total_recv)'
[
  {
    "src_host": "xxx.xxx.xxx.xxx",
    "dst_host": "yyy.yyy.yyy.yyy",
    "src_port": ":80",
    "dst_port": ":49881",
    "total_sent": 0,
    "total_recv": 30170,
    "sent_history": [],
    "recv_history": [
      30170
    ]
  }
]
```

# author

@pyama86
