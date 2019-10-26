# app-module

This is the root app that imports everything else.

It miay be that we need a root app for each target, because some modules or plugins have native dependencies.
- Desktop
- Mobile

And example being ?? 

SO for now the easiest way is to just not have that functionality in the target that does not support that native functionality. Its a work around for now.

Later we can probably use dependency injection and then at runtime check what OS we are on and then use an IOC ( inversion of control pattern ) to then load the dependency at runtime. The dart package called dio i think sort of does this.

SO in reality all plugins you want to use should really only be in the plugin repo.
Any ones that are not ours should be git forked into there, so we can keep control of what we are using perhapps ?


