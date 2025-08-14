{
  description = "A Collection of Personal Nix Flake Templates";

  inputs = {
    hello-template = {
      url = "github:MatrixManAtYrService/hello-template";
      flake = false;
    };
  };

  outputs = { self, hello-template, ... }: {
    templates = {
      pycli = {
        path = hello-template;
        description = "A python CLI app";
      };

      defaultTemplate = self.templates.pycli;
    };
  };
}
