# Git User Configuration Guide

This README explains how to set, check, and unset your Git username and email both **locally** (per repository) and **globally** (all repositories).

---

## 1. Set Username & Email

### Local (current repository only)

```bash
git config user.name "samAd0san"
git config user.email "sohaibsamad.hala@gmail.com"
```

### Global (all repositories)

```bash
git config --global user.name "samAd0san"
git config --global user.email "sohaibsamad.hala@gmail.com"
```

---

## 2. Check Username & Email

### Local

```bash
git config --list
git config user.name
git config user.email
```

### Global

```bash
git config --global --list
git config --global user.name
git config --global user.email
```

---

## 3. Unset / Remove Username & Email

### Local

```bash
git config --unset user.name
git config --unset user.email
```

### Global

```bash
git config --global --unset user.name
git config --global --unset user.email
```

---

This guide helps you manage your Git identity easily for commits and contributions.
