## git-crypt

Raycast settings are encrypted as they could contain sensitive data

To decrypt files with `git-crypt` using your stored GPG private key:

1. **Import your GPG private key:**
   - Save your exported key (from Bitwarden) to a file, e.g. `my-gpg-private-key.asc`.
   - Run:

     ```sh
     gpg --import my-gpg-private-key.asc
     ```

2. **Clone your git repo:**

   ```sh
   git clone git@github.com:RobinKessels/dotfiles.git
   cd dotfiles
   ```

3. **Unlock with git-crypt:**

   ```sh
   git-crypt unlock
   ```

   If your GPG key is loaded, `git-crypt` will decrypt the files automatically.
