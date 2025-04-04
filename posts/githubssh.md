[Home](../index.html)\
[Notes](../blog.html)

# Quick guide to setup ssh keys for GitHub on a new machine

This guide is just a condensed version of the guide from GitHub,
[here](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account),
and
[here](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent).

1. Create a new ssh key:

        ssh-keygen -t ed25519 -C "your_email@example.com"

2. Add the new key to your ssh agent (macOS)

   - Start the agent
        
        `eval "$(ssh-agent -s)"`
        
   - Edit the config

       `vim ~/.ssh/config`

   - Add the following text

        ```
        Host *.github.com
          AddKeysToAgent yes
          UseKeychain yes
          IdentityFile ~/.ssh/id_ed25519
        ```

   - Add the key to your apple keychain

        `ssh-add --apple-use-keychain ~/.ssh/id_ed25519`

3. Copy your *public* ssh key

        `pbcopy < ~/.ssh/id_ed25519.pub`

   or, 

        `cat ~/.ssh/id_ed25519.pub`

   and copy in the usual way.

4. Add the public key to your keys on Github.com
