📘 Using Multiple GitHub Accounts on One Mac (SSH)

Personal + Work (Parcera) Setup

This guide shows how to configure two GitHub accounts on the same Mac using SSH and clone a private repo successfully.

0️⃣ Problem Statement

You already had a personal GitHub account configured

You needed to access a private Parcera GitHub repo

git clone failed with:

Repository not found


Reason: SSH was authenticating with the wrong GitHub account

1️⃣ Verify which GitHub account is currently active
ssh -T git@github.com

Expected output
Hi samAd0byte! You've successfully authenticated, but GitHub does not provide shell access.


✅ This confirms:

SSH works

But it’s using personal account, not Parcera

2️⃣ Generate a NEW SSH key for Parcera (do NOT overwrite)
ssh-keygen -t ed25519 -C "samad@parcera.ai" -f ~/.ssh/id_ed25519_parcera

Expected prompts
Enter passphrase (empty for no passphrase):
Enter same passphrase again:

Expected output
Your identification has been saved in ~/.ssh/id_ed25519_parcera
Your public key has been saved in ~/.ssh/id_ed25519_parcera.pub


✅ You now have two SSH keys:

id_ed25519 → personal GitHub

id_ed25519_parcera → Parcera GitHub

3️⃣ Add the Parcera key to the SSH agent
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519_parcera

Expected output
Agent pid <number>
Identity added: ~/.ssh/id_ed25519_parcera (samad@parcera.ai)

4️⃣ Copy the public key and add it to GitHub (Parcera account)
cat ~/.ssh/id_ed25519_parcera.pub

Expected output (example)
ssh-ed25519 AAAAC3NzaC1lDz2W3ghkGvwzimPyX/haUbowAUqPSai6 samad@parcera.ai


📌 Paste this entire line into:

GitHub (Parcera account) → Settings → SSH and GPG keys → New SSH key

5️⃣ Configure SSH to choose the correct account

Edit SSH config:

nano ~/.ssh/config


Paste this exactly:

# Personal GitHub account
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_ed25519

# Parcera GitHub account
Host github-parcera
  HostName github.com
  User git
  IdentityFile ~/.ssh/id_ed25519_parcera


Save and exit.

6️⃣ Verify Parcera GitHub identity
ssh -T git@github-parcera

Expected output
Hi samAd0byte! You've successfully authenticated, but GitHub does not provide shell access.


✅ This confirms:

SSH alias github-parcera works

Correct key is being used

(GitHub still prints username, that’s normal — access is what matters)

7️⃣ Clone the private Parcera repo (SUCCESS STEP)
git clone git@github-parcera:Parcera-ai/parcera-mobile.git

Expected output
Cloning into 'parcera-mobile'...
remote: Enumerating objects: 260, done.
remote: Counting objects: 100% (260/260), done.
remote: Compressing objects: 100% (147/147), done.
remote: Total 260 (delta 101), reused 241 (delta 85)
Receiving objects: 100% (260/260), done.
Resolving deltas: 100% (101/101), done.


🎉 Repo cloned successfully

✅ Final Mental Model (Very Important)

One Mac → multiple SSH keys

SSH config decides identity

github.com → personal account

github-parcera → Parcera account

Clone URL controls which account is used

🧠 Common Mistakes to Avoid

❌ Overwriting id_ed25519
❌ Using HTTPS for private repos
❌ Forgetting to add SSH key to GitHub
❌ Cloning without SSH alias

🏁 You’re Done

You now have:

Clean multi-account GitHub setup

Zero credential conflicts

Reusable workflow for any company repo

Save this README — future you will thank you.
