### To pick some 'range' of commits and commit to other branch
- lets say i have 4 commits in branch **sam**, now i want to cp these commits in **v1** branch
- first
```
git checkout sam
git log --oneline
```

```
b8005c68 (HEAD -> android) console warn SEE error message
a485ef9b Using FontAwesome for iOS - Hide Session expired modal on logout
50bf54db (origin/android) Logout button in nav drawer
356f5f36 handle SSE error with server-side fallback handling - Prevent logout on SSE error

145a5d2f Update src/features/chat/components/MessageBubble.tsx
266cb329 Update src/database/repositories/ChatSessionRepository.ts
a240b2d1 Update src/features/chat/components/ChatInterface.tsx
```
- lets say you get range like this, but you just want to cp first 4 commits to brnach **v1**.
```
git checkout v1
git cherry-pick 356f5f36^..b8005c68
```
- These four commits will be cp to the v1 branch.
