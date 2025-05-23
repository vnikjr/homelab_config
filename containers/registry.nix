{
  virtualisation.oci-containers.containers.registry = {
    image = "registry:2";
    ports = [
      "5000:5000"
    ];
    volumes = [
      "/home/eve/docker-registry:/var/lib/registry"
    ];
    extraOptions = ["--network=caddy"];
    autoStart = true;
  };
}
