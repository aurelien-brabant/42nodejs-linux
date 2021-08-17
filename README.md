# 42nodejs-linux

As nodejs is not available on 42's linux dumps currently, this small script will install it locally for you.

You simply need to run the script and to add `$HOME/.local/opt/nodejs-42/bin` to your `PATH`. Make sure you set the `PATH` each
time you enter a new shell session, by setting it up in your `.bashrc` or `.zshrc`.

Using this temporary solution, you'll also be able to install **global** npm packages without the need to do any extra configuration.

For example, `npm install -g yarn` will install the yarn package manager globally and you'll be able to use it as soon as the install finishes.
