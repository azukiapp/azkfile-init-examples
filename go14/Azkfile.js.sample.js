/**
 * Documentation: http://docs.azk.io/Azkfile.js
 */

// Adds the systems that shape your system
systems({
  go14: {
    // Dependent systems
    depends: [],
    // More images:  http://images.azk.io
    image: {"docker": "golang:1.4"},
    workdir: "/go/src/azk/#{manifest.dir}",
    shell: "/bin/bash",
    provision: [
      "go install azk/#{manifest.dir}",
    ],
    command: "#{manifest.dir}",
    wait: {"retry": 20, "timeout": 1000},
    mounts: {
      '/go/src/azk/#{manifest.dir}': path("."),
      "/go/bin": persistent("go_bin"),
    },
    http: {
      domains: [ "#{system.name}.#{azk.default_domain}" ],
    },
  },
});
