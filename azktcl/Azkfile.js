/**
 * Documentation: http://docs.azk.io/Azkfile.js
 */

// Adds the systems that shape your system
systems({
  example: {
    // Dependent systems
    depends: [],
    // More images:  http://images.azk.io
    image: {"docker": "azukiapp/azktcl:0.0.1"},
    workdir: "/azk/#{manifest.dir}",
    shell: "/bin/bash",
    command: null,
    // wait: {"retry": 20, "timeout": 1000},
    // mounts: {
    //   '/azk/#{manifest.dir}': path("."),
    // },
    // envs: {
    //   // set instances variables
    //   EXAMPLE: "value",
    // },
  },
});



