# フォーク管理メモ

## リモート設定

| 名前 | リポジトリ | 役割 |
|------|-----------|------|
| `origin` | karaage0703/xangi | 本家 |
| `myfork` | g96085korosuke2000-droid/xangi | 自分のフォーク |

自分の変更ブランチ: `aco-main`

## 本家の更新を取り込む方法

```bash
cd ~/xangi
bash xangi-update.sh
```

これだけで OK。自分の変更を保ったまま本家に追いつく。

## スクリプトがやっていること

1. `git fetch origin` — 本家の最新を取得
2. `git checkout aco-main` — 自分のブランチに移動
3. `git rebase origin/main` — 本家の変更を取り込み、自分の変更を上に乗せ直す
4. `git push myfork aco-main --force-with-lease` — フォークに反映

## コンフリクトが出たら

```bash
git rebase --abort   # やり直す場合
# または
# コンフリクト箇所を手動で解決してから
git rebase --continue
```
