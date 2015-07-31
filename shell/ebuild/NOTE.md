NOTE
====

+ FOR testing the build system, since **BASH** is a very useful tool of system administrating, and it is good to use shell to manage so many packages in Linux and control the build of them.

+ use the ebuild system to build man packages, and use that tool to minimize user's modifcation, it is a very know deah estimation

+ use different function to specify the process, for example, in this example, we need the src code directoy, first unpack it, then we need to compile it, all these steps can be wrote in different function and it looks well in this way, also it is good for debugging since it will indicate in which stage it goes wrong

+ use variables instead of many hard-coded path or file name, otherwise it's hard to change to another project
