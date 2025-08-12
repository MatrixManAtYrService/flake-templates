{
  description = "A Collection of Personal Nix Flake Templates";

  outputs = { self, ... }: {
    templates = {
      pycli = {
        path = ./pycli;
        description = "A python CLI app";
      };

      defaultTemplate = self.templates.pycli;
    };
  };
}
