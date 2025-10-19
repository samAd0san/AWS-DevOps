# Git Branch Naming Convention

Maintaining a consistent and descriptive branch naming convention is crucial for organized and efficient workflows, especially in collaborative projects.

## Recommended Format

```
<type>/<area>/<ticket-id>-<short-description>
```

**Example:**

```
feature/customer/mobile/wallet-006
```

## Explanation

* **type/**: Indicates the purpose of the branch. Common prefixes:

  * `feature/` - For new features
  * `bugfix/` - For bug fixes
  * `hotfix/` - For urgent fixes in production
  * `release/` - For preparing a new release
  * `docs/` - For documentation changes
  * `test/` - For adding or modifying tests

* **area/**: Specifies the module or component (e.g., `customer`, `admin`, `api`).

* **ticket-id**: (Optional) Unique identifier from your issue tracker (e.g., Jira, GitHub Issues) linking the branch to a task.

* **short-description**: Brief, hyphenated summary of the branch's purpose (e.g., `wallet-integration`).

## Best Practices

* Use **lowercase letters** for consistency.
* Separate words with **hyphens** (`-`), not underscores or spaces.
* Be **descriptive but concise**.
* Avoid special characters; use alphanumeric characters and hyphens only.
* Include **ticket numbers** when possible for tracking.

## Example Branch Names

* `feature/customer/mobile/wallet-006` - Developing mobile wallet feature for the customer module.
* `bugfix/customer/api/login-issue` - Fixing a login issue in the customer API.
* `hotfix/admin/dashboard-crash` - Hotfix for crash in admin dashboard.
* `release/v1.2.0` - Preparing for release version 1.2.0.
* `docs/update-readme` - Updating README documentation.

Following this convention ensures Git branches are organized, easily identifiable, and aligned with best practices for collaboration and project management.
