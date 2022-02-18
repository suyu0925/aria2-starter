# aria2-starter

## basic usage

```bash
aria2c --conf-path="./aria2.conf" [<URI>|<MAGNET>|<TORRENT_FILE>|<METALINK_FILE>]
```

## only download selected file

1. download bittorrent file from magnet first
```bash
aria2c --conf-path="./aria2.conf" --bt-metadata-only=true --bt-save-metadata=true -q "magnet:?xt=urn:btih:$hash"
```

2. then inspect torrent
```bash
aria2c --conf-path="./aria2.conf" --show-files "$hash.torrent"
```

3. download selected file by index
```bash
aria2c --conf-path="./aria2.conf" --select-file=5-14 "$hash.torrent"
```
