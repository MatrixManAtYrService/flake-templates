{
  description = "A Collection of Personal Nix Flake Templates";

  inputs = {
    hello-template = {
      url = "github:MatrixManAtYrService/hello-template";
      flake = false;
    };
    unison-template = {
      url = "github:MatrixManAtYrService/unison-template";
      flake = false;
    };
  };

  outputs = { self, hello-template, unison-template, ... }: {
    templates = {
      pycli = {
        path = hello-template;
        description = "A python CLI app";
      };
      unison-template = {
        path = unison-template;
        description = "A devshell with ucm";
      };

      defaultTemplate = self.templates.pycli;
    };
  };
}
