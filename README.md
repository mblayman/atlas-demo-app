# atlas-demo-app

A demo app to show Atlas in action

# Dependencies

This demo app uses a rockspec to list the dependencies used
by the application.

The `luarocks.lock` contains the pinned versions
of everything installed in the tree.
That file is generated and updated
with

```bash
luarocks --tree .luarocks make --pin
```
