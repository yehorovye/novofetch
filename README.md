# novofetch

A minimalist system fetch tool written in [V](https://vlang.io).
`novofetch` displays essential system information.

## Features

- OS and kernel info
- CPU and GPU models
- Memory usage
- Uptime
- User/host info
- Color palette preview

## Installation

### Prerequisites

- [V language](https://vlang.io) installed and available in your `$PATH` (for nix users, there is a flake for easy development)
- Unix-like OS (Linux, macOS) (i was too lazy to make windows support)

### Clone and Build (or contribute)

```sh
git clone https://github.com/yehorovye/novofetch
cd novofetch
v -prod .
```

This will produce a binary called novofetch in the current directory.

### Usage
```
./novofetch
```

### Showcase
![](https://furry.is-from.space/r/ss_20250615_154405.png)

### Is it fast?
It is pretty fast.

![](https://furry.is-from.space/r/ss_20250615_165143.png)

> So yes, it is fast but I personally recommend using `microfetch` as it is way faster than any other fetch.
