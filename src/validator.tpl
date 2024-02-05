# File validator.toml

[parity]
chain = "/home/parity/.local/share/io.parity.ethereum/bloxberg.json"
base_path = "/home/parity/.local/share/io.parity.ethereum/bloxbergData"
auto_update = "all"

[network]
port = 30303
reserved_peers = "/home/parity/.local/share/io.parity.ethereum/bootnodes.txt"
nat = "__NAT_IP__"
discovery = true

[rpc]
port = 8545
apis = ["web3", "eth", "net", "personal", "parity", "parity_set", "traces", "rpc"]
# interface = "local"
interface = "all"
cors = ["*"]

[websockets]
disable = false
port = 8546
interface = "local"
origins = ["none"]

[account]
password = ["/home/parity/.local/share/io.parity.ethereum/validator.pwd"]

[mining]
#CHANGE ENGINE SIGNER TO VALIDATOR ADDRESS
engine_signer = "__ENGINE_SIGNER__"
reseal_on_txs = "none"
force_sealing = true
min_gas_price = 1000000
gas_floor_target = "10000000"

[footprint]
tracing = "off"
cache_size = 1024
db_compaction = "hdd"
pruning = "fast"  # prune old state data. Maintains journal overlay - fast but extra 50MB of memory used.

[misc]
log_file = "/home/parity/.local/share/io.parity.ethereum/bloxberg.log"

[ipc]
disable = true