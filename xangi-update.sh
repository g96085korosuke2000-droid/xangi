#!/bin/bash
# 本家の最新をrebaseしてフォークを更新するスクリプト
# 使い方: bash xangi-update.sh

set -e

BRANCH="aco-main"
REMOTE_UPSTREAM="origin"
REMOTE_FORK="myfork"

echo "📥 本家から最新を取得..."
git fetch $REMOTE_UPSTREAM

echo "🔀 $BRANCH ブランチに切り替え..."
git checkout $BRANCH

echo "⬆️  origin/main にrebase..."
git rebase $REMOTE_UPSTREAM/main

echo "📤 フォークにpush..."
git push $REMOTE_FORK $BRANCH --force-with-lease

echo "✅ 完了！自分の変更を保ったまま本家の最新に追いついた"
