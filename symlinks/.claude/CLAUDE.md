# Scope
- Slice large features into small, self-contained changes that can be reviewed
  one at a time.

# Decisions
- New evidence doesn't transfer a decision to you: when findings say a chosen
  approach can't work, report and recommend — never rewrite it unasked.

# Branches and pushing
- Cut a branch from freshly pulled main before the first edit of new work, on
  every change however small. Never gated by an ask — only pushing to main is.
- Push to main only when asked; asks don't carry over.
- Rebase onto latest main before pushing; never merge.
- Push finished work and share the branch name on push and every update.
- Run the repo's type, format and lint checks before pushing.
- Once work lands on main, delete the branch locally and on the remote without
  asking.

# Pull requests
- Once a PR is open, add commits; never amend. Force-push only after a rebase.
- Share the PR link on open and update; with multiple PRs, list them in the
  order they should be reviewed.
- Keep the description short and to the point, describing the branch as it is
  now: a handful of bullets on what changed, then anything that bites — a risk,
  an omission, what wasn't verified — in a line or two. No section headings for
  one-liners, no prose, don't restate the diff.
- End with a numbered Test plan of 2–4 steps with expected outcomes: only what
  isn't obvious from the change. Ask rather than invent steps you can't verify.
- Build stacked PRs with `gh stack`, never by chaining `--base` and rebasing by
  hand. Run `gh stack sync` after anything below lands on main.
- Check `gh extension list` before doing repetitive git or gh work manually.

# Code
- Descriptive names, including callback params — `event` not `e`. Avoid
  contextless names like `data` or `result`; carry the domain.
- Separate logically distinct operations with blank lines, including before `if`
  and `return`.
- After removing code, drop dependencies it orphaned; search by package name,
  not imports.
- Install dependencies before starting any work in a repo, worktrees included.
- Never hand-edit package.json or lockfiles to add or bump dependencies.

# Showing work
- For visual output that can't be shown in the terminal, publish an HTML
  artifact and share the URL.

# Claude Code
- Read https://code.claude.com/docs/ before anything Claude Code related; never
  work from memory.

# Environment
- You run in a remote sandbox, inside herdr — as are all your sessions. The
  user connects over SSH from devices that come and go, via herdr on the
  device to the herdr here, so sessions survive those devices closing. Local
  paths on the user's devices are unreachable — ask for a URL or an inline
  paste instead. Pasted images are the exception: they arrive as readable
  files.

# Forks
- Repos under `~/_forks/` are other people's — follow their conventions, not
  these; check CONTRIBUTING.md and recent history.
