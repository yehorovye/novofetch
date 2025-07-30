import os
import json

const use_color = os.getenv('NO_COLOR') == ''

fn colorize(code string) string {
	return if use_color { code } else { '' }
}

const col_pri = colorize('\x1b[38;2;82;119;195m')
const col_sec = colorize('\x1b[38;2;127;183;255m')
const col_blue = colorize('\x1b[34m')
const col_cyan = colorize('\x1b[36m')
const col_green = colorize('\x1b[32m')
const col_yellow = colorize('\x1b[33m')
const col_red = colorize('\x1b[31m')
const col_magenta = colorize('\x1b[35m')
const col_white = colorize('\x1b[37m')
const col_reset = colorize('\x1b[0m')

struct Art {
	name string
	art  []string
}

const arts = [
	Art{
		name: 'Nix'
		art:  [
			"${col_pri}        .;c:.    .cxkkx;   'dxl.${col_reset}",
			'${col_pri}        .;cc;.    .lxxkd,..lkko.${col_reset}',
			"${col_pri}         .;cc;.    .,cxkdldkko'${col_reset}",
			"${col_pri}     .....,ccc:'.....,lxkkkkl.${col_reset}",
			"${col_sec}    .:cccccccccccccccc:lxkkd'    .,.${col_reset}",
			"${col_sec}    ......;ccc:'........;dkxl.  .:c:.${col_reset}",
			"${col_sec}         .lxxo'          'okkl'':cc,.${col_reset}",
			"${col_sec}       .,okko'            .oxl::cc,.${col_reset}",
			'${col_sec}:oooooodxkxl.              .;:cccc:;;;;,${col_reset}',
			"${col_sec}coooodkkkxo,.              .,cc::;;;;;;'${col_reset}",
			"${col_sec} ...'lkkxl::;.            .;cc;.${col_reset}",
			'${col_sec}   .cxkd;.;cc;.          .;cc;.${col_reset}',
			"${col_sec}   'dkd,  .,cc:'.,;;,,;,;clll:;;;,;'${col_reset}",
			"${col_pri}    ,c'    .:cc::lxkkkkkkkkkkkkkkkd'${col_reset}",
			'${col_pri}          .,ccccc:;,,,,,:dkkxl;,,,.${col_reset}',
			"${col_pri}         .;cc:;:cc,.     'okko'${col_reset}",
			"${col_pri}        .;cc;. .:cc;'.    .okko.${col_reset}",
			"${col_pri}        .;c;.   ':ccc,     'dxl.${col_reset}",
		]
	},
	Art{
		name: 'Gentoo'
		art:  [
			'${col_pri}         :!?5PGBBBG5Y7~:                ${col_reset}',
			'${col_pri}      ^?P#@@@@@@@@@&&#BPY7^.            ${col_reset}',
			'${col_pri}    ~5#@@@@@@@@@@@@&&&###BG5J~.         ${col_reset}',
			'${col_pri}  ^Y&@@@@@@@@@@@@@@&#####BBGGGPJ^       ${col_reset}',
			'${col_pri} ~P@@@@@@@@@@@@@@BGGP555BBBGGGGGG57.    ${col_reset}',
			'${col_sec}.YG@@@@@@@@@@@&BGYJJY5J~JBBGGGGPPGBG?.  ${col_reset}',
			'${col_sec}.JPGB&@@@@@@@@@&B57~~?JYGBBGGGPPP5G&B! ${col_reset}',
			'${col_sec} .7Y5PGB#&@@@@@@@@&######BBGGGGPPPP55@@?${col_reset}',
			'${col_sec}   .~?Y5PGB#&@@@@@@&&###BBGGGGPPPP55G@&P${col_reset}',
			'${col_pri}       .~5B&@@@@@@&&###BBBGGGGPPPPB&@#P?${col_reset}',
			'${col_pri}      .7G@@@@@@@@&&&##BBBGGGGPPGB@@#PY! ${col_reset}',
			'${col_pri}    ^Y&@@@@@@@@&&&###BBBGGGPGB&@&B5J!.  ${col_reset}',
			'${col_pri}  ^P@@@@@@@@@&&&&###BBBGGGB#@@#PY?~.    ${col_reset}',
			'${col_sec} J@@@@@@@@@&&&&####BBGBB&@@#PY?!:       ${col_reset}',
			'${col_sec}J@@@@@@&&&&&&###BBB##&@&BPY?!^.         ${col_reset}',
			'${col_sec}5&@&&&&&&#######&&&&BPY?7!^.            ${col_reset}',
			'${col_sec}!5&@@&&&&&&&&&&BG5Y?7!~:.               ${col_reset}',
			'${col_sec} ^?YPGGGGPP5YJ?7!~^:.                   ${col_reset}',
			'${col_sec}  .:~!!77!!!~^:..                        ${col_reset}',
		]
	},
	Art{
		name: 'Void'
		art:  [
			'${col_green}                  __.;=====;.__',
			'${col_green}              _.=+==++=++=+=+===;.',
			'${col_green}               -=+++=+===+=+=+++++=_',
			'${col_green}          .     -=:     --==+=++==.',
			'${col_green}         _vi,                --+=++++:',
			'${col_green}        .uvnvi.       _._       -==+==+.',
			'${col_green}       .vvnvnI    .;==|==;.     :|=||=|.',
			'${col_white}  +QmQQmpvvnv; _yYsyQQWUUQQQm #QmQ#:QQQWUV\$QQm.',
			'${col_white}   -QQWQWpvvowZ?.wQQQE==<QWWQ/QWQW.QQWW(: jQWQE',
			'${col_white}    -\$QQQQmmU\\\'  jQQQ\\@+=<QWQQ)mQQQ.mQQQC+;jWQQ\\@\'',
			'${col_white}     -\$WQ8YnI:   QWQQwgQQWVmWQQ.jQWQQgyyWW\\@!',
			'${col_green}       -1vvnvv.     ~+++        ++|+++.',
			'${col_green}        +vnvnnv,                 -|===',
			'${col_green}         +vnvnvns.           .      :=-',
			'${col_green}          -Invnvvnsi..___..=sv=.     ${col_reset}',
			'${col_green}            +Invnvnvnnnnnnnnvvnn;.',
			'${col_green}              ~|Invnvnvvnvvvnnv}+',
			'${col_green}                  -~|{*l}*|~${col_reset}',
		]
	},
	Art{
		name: 'Alpine'
		art:  [
			'${col_blue}       .hddddddddddddddddddddddh.',
			'${col_blue}      :dddddddddddddddddddddddddd:',
			'${col_blue}     /dddddddddddddddddddddddddddd/',
			'${col_blue}    +dddddddddddddddddddddddddddddd+',
			'${col_blue}  sdddddddddddddddddddddddddddddddds',
			'${col_blue} ydddddddddddd++hdddddddddddddddddddy',
			'${col_blue}.hddddddddddd+  +ddddh:-sdddddddddddh.',
			'${col_blue}hdddddddddd+      +y:    .sddddddddddh',
			'${col_blue}ddddddddh+   //   .     -sddddddddd',
			'${col_blue}ddddddh+   /hddh/   :s-    -sddddddd',
			'${col_blue}ddddh+   /+/dddddh/   +s-    -sddddd',
			'${col_blue}ddd+   /o :dddddddh/   oy-    .yddd',
			'${col_blue}hdddyo+ohddyosdddddddddho+oydddy++ohdddh',
			'${col_blue}.hddddddddddddddddddddddddddddddddddddh.',
			'${col_blue} yddddddddddddddddddddddddddddddddddy',
			'${col_blue}  sdddddddddddddddddddddddddddddddds',
			'${col_blue}    +dddddddddddddddddddddddddddddd+',
			'${col_blue}     /dddddddddddddddddddddddddddd/',
			'${col_blue}      :dddddddddddddddddddddddddd:',
			'${col_blue}       .hddddddddddddddddddddddh.${col_reset}',
		]
	},
	Art{
		name: 'Fedora'
		art:  [
			'${col_blue}                       ((((                       ${col_reset}',
			'${col_blue}              (((((((((((((((((((((((             ${col_reset}',
			'${col_blue}          (((((((((((((((((((((((((((((((         ${col_reset}',
			'${col_blue}       (((((((((((((((((((((((((((((((((((((      ${col_reset}',
			'${col_blue}     ((((((((((((((((((((((((${col_reset}#&#${col_blue}((((((((((((((    ${col_reset}',
			'${col_blue}    (((((((((((((((((((((${col_reset}@@@@@@@@@@@@${col_blue}((((((((((   ${col_reset}',
			'${col_blue}  (((((((((((((((((((((${col_reset}@@@@@${col_blue}(((((%${col_reset}@@@@${col_blue}((((((((((( ${col_reset}',
			'${col_blue} ((((((((((((((((((((((${col_reset}@@@@${col_blue}((((((((${col_reset}@@@@${col_blue}((((((((((( ${col_reset}',
			'${col_blue} ((((((((((((((((((((((${col_reset}@@@@${col_blue}((((((((${col_reset}@@@${col_blue}(((((((((((( ${col_reset}',
			'${col_blue}(((((((((((((((((((((((${col_reset}@@@@${col_blue}((((((((((((((((((((((( ${col_reset}',
			'${col_blue}(((((((((((((${col_reset}@@@@@@@@${col_blue}((${col_reset}@@@@@@@@@${col_blue}#((((((((((((((((( ${col_reset}',
			'${col_blue}((((((((((${col_reset}@@@@@@@@@@@${col_blue}((${col_reset}@@@@@@@@${col_blue}#(((((((((((((((((( ${col_reset}',
			'${col_blue}(((((((((${col_reset}@@@@${col_blue}((((((((((${col_reset}@@@@${col_blue}((((((((((((((((((((((( ${col_reset}',
			'${col_blue}((((((((${col_reset}@@@@${col_blue}%((((((((((${col_reset}@@@@${col_blue}((((((((((((((((((((((  ${col_reset}',
			'${col_blue}(((((((((${col_reset}@@@@${col_blue}(((((((((${col_reset}@@@@@${col_blue}(((((((((((((((((((((   ${col_reset}',
			'${col_blue}((((((((((${col_reset}@@@@@@${col_blue}#((${col_reset}@@@@@@${col_blue}((((((((((((((((((((((    ${col_reset}',
			'${col_blue}((((((((((((${col_reset}@@@@@@@@@@@${col_blue}((((((((((((((((((((((      ${col_reset}',
			'${col_blue}((((((((((((((((((((((((((((((((((((((((((         ${col_reset}',
			'${col_blue} ((((((((((((((((((((((((((((((((((((((            ${col_reset}',
			'${col_blue}  (((((((((((((((((((((((((((((((                 ${col_reset}',
		]
	},
	Art{
		name: 'Artix'
		art:  [
			'${col_blue}                         ,                        ${col_reset}',
			'${col_blue}                        ///                       ${col_reset}',
			'${col_blue}                       //(//                      ${col_reset}',
			'${col_blue}                      //((((/                     ${col_reset}',
			'${col_blue}                     ///(((((/                    ${col_reset}',
			'${col_blue}                   ////##(((((//                  ${col_reset}',
			'${col_blue}                  /////###(((((//                 ${col_reset}',
			'${col_blue}                 ////////##((((((/                ${col_reset}',
			'${col_blue}                    /////*/*#(((((/               ${col_reset}',
			'${col_blue}                         ******((((/              ${col_reset}',
			'${col_cyan}             /////           ${col_blue}****(((//            ${col_reset}',
			'${col_cyan}            ///((((/////          ${col_blue}**(//           ${col_reset}',
			'${col_cyan}           ///(((((((((///////        ${col_blue}*/          ${col_reset}',
			'${col_cyan}          ///((((((((((###/////////,              ${col_reset}',
			'${col_cyan}        ////((((((((((######////////////          ${col_reset}',
			'${col_cyan}       ////((((((((((###//////////         ${col_blue}/      ${col_reset}',
			'${col_cyan}      ///((((((((((***//////          ${col_blue}////((/     ${col_reset}',
			'${col_cyan}     ////((((((*******            ${col_blue}//////#((((/    ${col_reset}',
			'${col_cyan}    ////(((*****                 ${col_blue}////////#((((/   ${col_reset}',
			'${col_cyan}  ////(***                              ${col_blue}*****((// ${col_reset}',
			'${col_cyan} //                                            ${col_blue}**/ ${col_reset}',
		]
	},
	Art{
		name: 'Manjaro'
		art:  [
			'${col_green}(((((((((((((((((((((((((((((((((   ((((((((((((((${col_reset}',
			'${col_green}(((((((((((((((((((((((((((((((((   ((((((((((((((${col_reset}',
			'${col_green}(((((((((((((((((((((((((((((((((   ((((((((((((((${col_reset}',
			'${col_green}(((((((((((((((((((((((((((((((((   ((((((((((((((${col_reset}',
			'${col_green}(((((((((((((((((((((((((((((((((   ((((((((((((((${col_reset}',
			'${col_green}(((((((((((((((((((((((((((((((((   ((((((((((((((${col_reset}',
			'${col_green}(((((((((((((((                     ((((((((((((((${col_reset}',
			'${col_green}(((((((((((((((                     ((((((((((((((${col_reset}',
			'${col_green}(((((((((((((((   (((((((((((((((   ((((((((((((((${col_reset}',
			'${col_green}(((((((((((((((   (((((((((((((((   ((((((((((((((${col_reset}',
			'${col_green}(((((((((((((((   (((((((((((((((   ((((((((((((((${col_reset}',
			'${col_green}(((((((((((((((   (((((((((((((((   ((((((((((((((${col_reset}',
			'${col_green}(((((((((((((((   (((((((((((((((   ((((((((((((((${col_reset}',
			'${col_green}(((((((((((((((   (((((((((((((((   ((((((((((((((${col_reset}',
			'${col_green}(((((((((((((((   (((((((((((((((   ((((((((((((((${col_reset}',
			'${col_green}(((((((((((((((   (((((((((((((((   ((((((((((((((${col_reset}',
			'${col_green}(((((((((((((((   (((((((((((((((   ((((((((((((((${col_reset}',
			'${col_green}(((((((((((((((   (((((((((((((((   ((((((((((((((${col_reset}',
			'${col_green}(((((((((((((((   (((((((((((((((   ((((((((((((((${col_reset}',
			'${col_green}(((((((((((((((   (((((((((((((((   ((((((((((((((${col_reset}',
		]
	},
	Art{
		name: 'Arch'
		art:  [
			'${col_pri}                   A${col_reset}',
			'${col_pri}                  /#\\${col_reset}',
			'${col_pri}                 /###\\${col_reset}',
			'${col_pri}                /#####\\${col_reset}',
			'${col_pri}               /#######\\${col_reset}',
			'${col_pri}              _ "=######\\${col_reset}',
			'${col_pri}             /##=,_\\#####\\${col_reset}',
			'${col_pri}            /#############\\${col_reset}',
			'${col_pri}           /###############\\${col_reset}',
			'${col_pri}          /#################\\${col_reset}',
			'${col_pri}         /###################\\${col_reset}',
			'${col_pri}        /########*"""*########\\${col_reset}',
			'${col_pri}       /#######/       \\#######\\${col_reset}',
			'${col_pri}      /########         ########\\${col_reset}',
			'${col_pri}     /#########         ######m=,_${col_reset}',
			'${col_pri}    /##########         ##########\\${col_reset}',
			'${col_pri}   /######***             ***######\\${col_reset}',
			'${col_pri}  /###**                       **###\\${col_reset}',
			'${col_pri} /**                               **\\\\${col_reset}',
		]
	},
	Art{
		name: 'None'
		art:  []
	},
]

fn human_bytes(b u64) string {
	units := ['B', 'K', 'M', 'G', 'T']
	mut n := f64(b)
	mut idx := 0
	for n >= 1024.0 && idx < units.len - 1 {
		n /= 1024.0
		idx++
	}
	return '${n:0.1f}${units[idx]}'
}

fn fmt_duration(secs int) string {
	if secs < 0 {
		return 'unknown'
	}
	h := secs / 3600
	m := (secs % 3600) / 60
	s := secs % 60
	return '${h}h ${m}m ${s}s'
}

fn strip_ansi(s string) string {
	mut res := []u8{}
	mut in_esc := false
	for c in s.bytes() {
		if c == 0x1b {
			in_esc = true
			continue
		}
		if in_esc {
			if c == `m` {
				in_esc = false
			}
			continue
		}
		res << c
	}
	return res.bytestr()
}

fn visible_len(s string) int {
	return strip_ansi(s).runes().len
}

fn read_uptime() int {
	content := os.read_file('/proc/uptime') or { return -1 }
	return content.split(' ')[0].int()
}

fn get_model() string {
	return os.read_file('/sys/class/dmi/id/product_name') or { '' }.trim_space()
}

fn get_shell() string {
	sh := os.getenv_opt('SHELL') or { '' }
	return if sh == '' { 'unknown' } else { sh.all_after_last('/') }
}

struct Route {
	prefsrc string @[json: 'prefsrc']
}

fn get_local_ip() string {
	res := os.execute('ip -j route')
	if res.exit_code != 0 {
		return 'idk lol'
	}
	data := res.output.trim_space()
	routes := json.decode([]Route, data) or { return 'idk lol' }
	for r in routes {
		if r.prefsrc.len > 0 {
			return r.prefsrc
		}
	}
	return 'idk lol'
}

fn package_counts() map[string]int {
	mut m := map[string]int{}

	if os.exists('/run/current-system/sw/bin') {
		m['nix'] = (os.ls('/run/current-system/sw/bin') or { [] }).len
	}
	if os.exists('/usr/bin/dpkg-query') {
		output := os.execute("dpkg-query -f '.' -W")
		m['dpkg'] = output.output.len
	}
	if os.exists('/usr/bin/rpm') {
		output := os.execute('rpm -qa')
		m['rpm'] = output.output.split_into_lines().len
	}
	if os.exists('/usr/bin/pacman') {
		output := os.execute('pacman -Q')
		m['pacman'] = output.output.split_into_lines().len
	}
	if os.exists('/usr/bin/flatpak') {
		output := os.execute('flatpak list')
		m['flatpak'] = output.output.split_into_lines().len
	}

	return m
}

fn colourful_dots() string {
	colors := [col_blue, col_cyan, col_green, col_cyan, col_red, col_magenta]
	return colors.map(it + '').join(' ') + col_reset
}

fn gpu_list() []string {
	res := os.execute('lspci')
	if res.exit_code != 0 {
		return []
	}
	mut gpus := []string{}
	for line in res.output.split_into_lines() {
		if line.contains('VGA') || line.contains('3D controller') {
			desc := line.all_after(': ').trim_space()
			if desc.contains('[') && desc.contains(']') {
				gpus << desc.all_after('[').all_before(']').trim_space()
			} else {
				parts := desc.split(' ')
				short := parts[parts.len - 3..].join(' ')
				gpus << short
			}
		}
	}
	return gpus
}

fn read_meminfo() string {
	mut total := u64(0)
	mut avail := u64(0)

	for line in os.read_lines('/proc/meminfo') or { return '' } {
		if line.starts_with('MemTotal:') {
			total = line.all_after(':').trim_space().all_before(' ').u64() * 1024
		} else if line.starts_with('MemAvailable:') {
			avail = line.all_after(':').trim_space().all_before(' ').u64() * 1024
		}
	}

	used_pct := if total > 0 { f64(total - avail) / f64(total) * 100 } else { 0.0 }
	unit := if total >= 1024 * 1024 * 1024 { 'GB' } else { 'MB' }
	div := if unit == 'GB' { 1024.0 * 1024.0 * 1024.0 } else { 1024.0 * 1024.0 }

	return '${f64(avail) / div:.2f}${unit} / ${f64(total) / div:.2f}${unit} (${used_pct:.1f}%)'
}

fn root_disk_usage() (u64, u64) {
	res := os.execute('df -B1 /')
	if res.exit_code != 0 {
		return 0, 0
	}
	lines := res.output.split_into_lines()
	if lines.len < 2 {
		return 0, 0
	}
	cols := lines[1].fields()
	if cols.len < 3 {
		return 0, 0
	}
	total := cols[1].u64()
	used := cols[2].u64()
	return total, total - used
}

fn get_art(current string, fake string) string {
	if fake.len > 0 {
		for a in arts {
			if a.name.to_lower() == fake.to_lower() {
				return a.art.join('\n')
			}
		}
	}

	host := (os.hostname() or { '' }).to_lower()
	for a in arts {
		if current.contains(a.name.to_lower()) || host.contains(a.name.to_lower()) {
			return a.art.join('\n')
		}
	}

	return ''
}

fn get_distro() string {
	path := '/etc/os-release'
	if !os.exists(path) {
		return ''
	}
	for line in os.read_lines(path) or { return '' } {
		if line.starts_with('PRETTY_NAME=') {
			return line.all_after('=').trim('"\'')
		}
	}
	return ''
}

fn main() {
	$if windows {
		panic('windows LOLLLLLLLLLL xDDDDDDDDDDDDDD')
	}

	distro := get_distro()
	fake := if os.args.len > 1 { os.args[1] } else { '' }
	art := get_art(distro, fake)

	host := os.hostname() or { 'unknown' }
	uname := os.uname()

	pkgs := package_counts()
	mut pkgs_str := pkgs.keys().map('${it} - ${pkgs[it]}')

	mut cpu_brand := ''
	for line in os.read_lines('/proc/cpuinfo') or { []string{} } {
		if line.starts_with('model name') {
			cpu_brand = line.all_after(':').trim_space()
			break
		}
	}

	mi := read_meminfo()
	total, free := root_disk_usage()

	mut info_lines := [
		'${col_cyan} ${os.getenv('USER')}${col_red}@${col_green}${host} ${col_red}~${col_reset}',
		'${col_cyan}OS${col_white}: ${distro}${col_reset}',
		'${col_cyan}Model${col_white}: ${get_model()}${col_reset}',
		'${col_cyan}Kernel${col_white}: ${uname.sysname} ${uname.release}${col_reset}',
		'${col_cyan}Shell${col_white}: ${get_shell()}${col_reset}',
		'${col_cyan}Uptime${col_white}: ${fmt_duration(read_uptime())}${col_reset}',
		'${col_cyan}Packages${col_white}: ${pkgs_str.join(', ')}${col_reset}',
		'${col_cyan}CPU${col_white}: ${cpu_brand}${col_reset}',
		'${col_cyan}Memory${col_white}: ${mi}${col_reset}',
		'${col_cyan}Disk${col_white}: ${human_bytes(free)} free / ${human_bytes(total)} total${col_reset}',
		'${col_cyan}GPU${col_white}: ${gpu_list().join(', ')}${col_reset}',
		'${col_cyan}IP${col_white}: ${get_local_ip()}${col_reset}',
		'${col_reset}${colourful_dots()}',
	]

	art_lines := if art.len > 0 { art.split_into_lines() } else { []string{} }

	mut art_width := 0
	for l in art_lines {
		w := visible_len(l)
		if w > art_width {
			art_width = w
		}
	}
	pad_gap := 2
	total_pad := art_width + pad_gap

	max_lines := if art_lines.len > info_lines.len { art_lines.len } else { info_lines.len }
	for i in 0 .. max_lines {
		art_line := if i < art_lines.len { art_lines[i] } else { '' }
		info_line := if i < info_lines.len { info_lines[i] } else { '' }

		pad := ' '.repeat(total_pad - visible_len(art_line))
		println('${art_line}${pad}${info_line}')
	}
}
