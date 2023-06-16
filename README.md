# Nmap-Auto
Automate Nmap
# Nmap Scanning Techniques


## Ping Scan:
- To perform a ping scan in Nmap, you can use the "-sn" or "-sP" options. This scan type checks for live hosts by sending ICMP echo requests (pings) and analyzing the responses.
- The "-n" option can be used to avoid name resolution and display only IP addresses.
- The "-Pn" option instructs Nmap to assume all hosts are online and skip host discovery.



## In situations where pinging or other protocols like SMTP are blocked on the target system, Nmap provides alternative scan options:
- "-PS" performs a TCP SYN ping scan.
- "-PA" performs an ACK ping scan.
- "-PU" performs a UDP ping scan.
- "-PY" performs a SCTP INIT ping scan.
- These additional options can be useful when the standard ICMP echo request/reply packets are blocked or filtered.

## Port Scan:
- For port scanning, there are different scan types available in Nmap.
  - "SYS" or "-sS" is the TCP SYN scan, which is fast and stealthy.
  - TCP SYN scan behavior:
    - Port is open for connection: SYN --> SYN/ACK <-- RST
    - Port is open but not for connection: SYN --> RST/ACK <--
    - Port is filtered (firewall): SYN --> No response or ICMP unreachable message
  - "TCP" or "-sT" is the TCP connect scan, which establishes a full TCP connection.
    - Port is open: SYN --> SYN/ACK <-- ACK --> RST
    - Port is closed: SYN --> RST/ACK <--
  - "UDP" or "-sU" is the UDP scan, which is slower than TCP scanning. UDP scanning can be enhanced with version detection ("-sV") to obtain more accurate results.
    - Port is open: UDP packet --> UDP response
    - Port is closed: UDP packet --> ICMP port unreachable
    - Port is filtered: UDP packet --> Other ICMP unreachable message

## Service/Version Detection:
- The "-sV" option in Nmap probes open ports to determine service and version information.

## OS Detection:
- The "-O" option enables OS detection in Nmap.
- "--osscan-limit" limits OS detection to promising targets.
- "--osscan-guess" makes Nmap guess the OS more aggressively.

## Input
- `-iL <inputfilename>`: This option allows you to specify a file containing a list of hosts or networks as input for the scan. Nmap will read the targets from the provided file.

- `-iR <num hosts>`: With this option, Nmap randomly selects the specified number of targets for scanning. It is useful when you want to scan a random set of hosts.

- `--exclude <host1[,host2][,host3],...>`: This option enables you to exclude specific hosts or networks from the scanning process. Simply list the hosts or networks you want to exclude, separated by commas.

- `--excludefile <exclude_file>`: If you have a file containing a list of hosts or networks that you want to exclude, you can use this option to provide the filename. Nmap will exclude the hosts or networks specified in the file.

These target input management options give you flexibility in selecting targets for scanning and excluding specific hosts or networks from the scan.

  
 ## Output
   the output options in Nmap:

- `-oN <file>`: Save scan results in normal text format to the given filename.
- `-oX <file>`: Save scan results in XML format to the given filename.
- `-oS <file>`: Save scan results in script-friendly format to the given filename.
- `-oG <file>`: Save scan results in grepable format to the given filename.
- `-oA <basename>`: Save scan results in normal, XML, and grepable formats with the specified basename.

