require "json"

struct Docker::Api::Models::Container
  JSON.mapping({
    app_armor_profile: {setter: false, key: "AppArmorProfile", type: String},
    args:              {setter: false, key: "Args", type: Array(String)},
    config:            {setter: false, key: "Config", type: Config},
    created:           {setter: false, key: "Created", type: String},
    driver:            {setter: false, key: "Driver", type: String},
    exec_ids:          {setter: false, key: "ExecIDs", type: Array(String)?},
    host_config:       {setter: false, key: "HostConfig", type: HostConfig},
    hostname_path:     {setter: false, key: "HostnamePath", type: String},
    hosts_path:        {setter: false, key: "HostsPath", type: String},
    log_path:          {setter: false, key: "LogPath", type: String},
    id:                {setter: false, key: "Id", type: String},
    image:             {setter: false, key: "Image", type: String},
    mount_label:       {setter: false, key: "MountLabel", type: String},
    name:              {setter: false, key: "Name", type: String},
    network_settings:  {setter: false, key: "NetworkSettings", type: NetworkSettings},
    path:              {setter: false, key: "Path", type: String},
    process_label:     {setter: false, key: "ProcessLabel", type: String},
    resolv_conf_path:  {setter: false, key: "ResolvConfPath", type: String},
    restart_count:     {setter: false, key: "RestartCount", type: Int32},
    state:             {setter: false, key: "State", type: State},
    mounts:            {setter: false, key: "Mounts", type: Array(Mount)},
  })

  struct Config
    JSON.mapping({
      attach_stderr:    {setter: false, key: "AttachStderr", type: Bool},
      attach_stdin:     {setter: false, key: "AttachStdin", type: Bool},
      attach_stdout:    {setter: false, key: "AttachStdout", type: Bool},
      cmd:              {setter: false, key: "Cmd", type: Array(String)},
      domainname:       {setter: false, key: "Domainname", type: String},
      env:              {setter: false, key: "Env", type: Array(String)},
      hostname:         {setter: false, key: "Hostname", type: String},
      image:            {setter: false, key: "Image", type: String},
      labels:           {setter: false, key: "Labels", type: Hash(String, String)},
      mac_address:      {setter: false, key: "MacAddress", type: String?},
      network_disabled: {setter: false, key: "NetworkDisabled", type: Bool?},
      open_stdin:       {setter: false, key: "OpenStdin", type: Bool},
      stdin_once:       {setter: false, key: "StdinOnce", type: Bool},
      tty:              {setter: false, key: "Tty", type: Bool},
      user:             {setter: false, key: "User", type: String},
      volumes:          {setter: false, key: "Volumes", type: Hash(String, JSON::Any)?},
      working_dir:      {setter: false, key: "WorkingDir", type: String},
      stop_signal:      {setter: false, key: "StopSignal", type: String?},
      stop_timeout:     {setter: false, key: "StopTimeout", type: Int32?},
    })
  end

  struct HostConfig
    JSON.mapping({
      maxium_iops:  {setter: false, key: "MaximumIOps", type: Int32},
      maxium_iobps: {setter: false, key: "MaximumIOBps", type: Int32},
      blkio_weight: {setter: false, key: "BlkioWeight", type: Int32},
    })
    #     "BlkioWeightDevice": [
    #       {}
    #     ],
    #     "BlkioDeviceReadBps": [
    #       {}
    #     ],
    #     "BlkioDeviceWriteBps": [
    #       {}
    #     ],
    #     "BlkioDeviceReadIOps": [
    #       {}
    #     ],
    #     "BlkioDeviceWriteIOps": [
    #       {}
    #     ],
    #     "ContainerIDFile": "",
    #     "CpusetCpus": "",
    #     "CpusetMems": "",
    #     "CpuPercent": 80,
    #     "CpuShares": 0,
    #     "CpuPeriod": 100000,
    #     "CpuRealtimePeriod": 1000000,
    #     "CpuRealtimeRuntime": 10000,
    #     "Devices": [],
    #     "IpcMode": "",
    #     "LxcConf": [],
    #     "Memory": 0,
    #     "MemorySwap": 0,
    #     "MemoryReservation": 0,
    #     "KernelMemory": 0,
    #     "OomKillDisable": false,
    #     "OomScoreAdj": 500,
    #     "NetworkMode": "bridge",
    #     "PidMode": "",
    #     "PortBindings": {},
    #     "Privileged": false,
    #     "ReadonlyRootfs": false,
    #     "PublishAllPorts": false,
    #     "RestartPolicy": {
    #       "MaximumRetryCount": 2,
    #       "Name": "on-failure"
    #     },
    #     "LogConfig": {
    #       "Type": "json-file"
    #     },
    #     "Sysctls": {
    #       "net.ipv4.ip_forward": "1"
    #     },
    #     "Ulimits": [
    #       {}
    #     ],
    #     "VolumeDriver": "",
    #     "ShmSize": 67108864
    #   },
  end

  struct NetworkSettings
    JSON.mapping({
      bridge:                     {setter: false, key: "Bridge", type: String},
      sandbox_id:                 {setter: false, key: "SandboxID", type: String},
      hairpin_mode:               {setter: false, key: "HairpinMode", type: Bool},
      link_local_ipv6_address:    {setter: false, key: "LinkLocalIPv6Address", type: String},
      link_local_ipv6_prefix_len: {setter: false, key: "LinkLocalIPv6PrefixLen", type: Int32},
      sandbox_key:                {setter: false, key: "SandboxKey", type: String},
      endpoint_id:                {setter: false, key: "EndpointID", type: String},
      gateway:                    {setter: false, key: "Gateway", type: String},
      global_ipv6_address:        {setter: false, key: "GlobalIPv6Address", type: String},
      global_ipv6_prefix_len:     {setter: false, key: "GlobalIPv6PrefixLen", type: Int32},
      ip_address:                 {setter: false, key: "IPAddress", type: String},
      ip_prefix_len:              {setter: false, key: "IPPrefixLen", type: Int32},
      ipv6_gatway:                {setter: false, key: "IPv6Gateway", type: String},
      mac_address:                {setter: false, key: "MacAddress", type: String},
      networks:                   {setter: false, key: "Networks", type: Hash(String, Network)},
    })

    struct Network
      JSON.mapping({
        network_id:             {setter: false, key: "NetworkID", type: String},
        endpoint_id:            {setter: false, key: "EndpointID", type: String},
        gateway:                {setter: false, key: "Gateway", type: String},
        ip_address:             {setter: false, key: "IPAddress", type: String},
        ip_prefix_len:          {setter: false, key: "IPPrefixLen", type: Int32},
        ipv6_gatway:            {setter: false, key: "IPv6Gateway", type: String},
        global_ipv6_address:    {setter: false, key: "GlobalIPv6Address", type: String},
        global_ipv6_prefix_len: {setter: false, key: "GlobalIPv6PrefixLen", type: Int32},
        mac_address:            {setter: false, key: "MacAddress", type: String},
      })
    end
  end

  struct State
    JSON.mapping({
      error:       {setter: false, key: "Error", type: String},
      exit_code:   {setter: false, key: "ExitCode", type: Int32},
      finished_at: {setter: false, key: "FinishedAt", type: String},
      oom_killed:  {setter: false, key: "OOMKilled", type: Bool},
      dead:        {setter: false, key: "Dead", type: Bool},
      paused:      {setter: false, key: "Paused", type: Bool},
      pid:         {setter: false, key: "Pid", type: Int32},
      restarting:  {setter: false, key: "Restarting", type: Bool},
      running:     {setter: false, key: "Running", type: Bool},
      started_at:  {setter: false, key: "StartedAt", type: String},
      status:      {setter: false, key: "Status", type: String},
    })
  end

  struct Mount
    JSON.mapping({
      name:        {setter: false, key: "Name", type: String},
      source:      {setter: false, key: "Source", type: String},
      destination: {setter: false, key: "Destination", type: String},
      driver:      {setter: false, key: "Driver", type: String},
      mode:        {setter: false, key: "Mode", type: String},
      rw:          {setter: false, key: "RW", type: Bool},
      propogation: {setter: false, key: "Propagation", type: String},
    })
  end
end
