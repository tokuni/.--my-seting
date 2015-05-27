;emacs 非公式のリポジトリ追加
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
;ほかん
(require 'auto-complete-config)
(ac-config-default)
(add-to-list 'ac-modes 'text-mode) ;; text-modeでも自動的に有効
(add-to-list 'ac-modes 'fundamental-mode)  ;; fundamental-mode
(add-to-list 'ac-modes 'org-mode)
(add-to-list 'ac-modes 'yatex-mode)
(ac-set-trigger-key "TAB")
(setq ac-use-menu-map t)    ;; 補完メニュー表示時にC-n/C-pで移動
(setq ac-use-fuzzy t)     ;; 曖昧な物マッチ

;必須設定
(require 'auto-complete-config)
(ac-config-default)
