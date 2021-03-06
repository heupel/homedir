(add-to-list 'load-path "~/.emacs.d/plugins/")

;; Hide those pesky backup files
(setq backup-directory-alist '(("." . "~/.emacs.d/_backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )

;; Hide autosave files
(setq auto-save-file-name-transforms
  `((".*" , "~/.emacs.d/_autosave/" t)))


;; Line number info on left
;;(global-linum-mode t)

;; Hilight the current line
(global-hl-line-mode 1)
(set-face-background 'hl-line "#333")

;; Font
(set-default-font "Monaco-14")

;; twilight color theme
(add-to-list 'load-path "~/.emacs.d/plugins/color-theme/")
(require 'color-theme)
(color-theme-initialize)
(color-theme-twilight)

;; package management via MELPA
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
)
;; erlang mode
;;(add-to-list 'load-path "/usr/local/lib/erlang/lib/tools-2.7.1/emacs/")
;;(require 'erlang-start)

;; go mode (golang)
;;(add-to-list 'load-path "/usr/local/Cellar/go/1.4.1/misc/emacs/")
;;(require 'go-mode-load)

;; js2-mode
;;(autoload 'js2-mode "js2" nil t)
;;(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;;(add-to-list 'load-path
;;                  "~/.emacs.d/plugins/yasnippet-0.6.1c")
;;(require 'yasnippet) ;; not yasnippet-bundle
;;(yas/initialize)
;;(yas/load-directory "~/.emacs.d/plugins/yasnippet-0.6.1c/snippets")

;; auto-complete
;;(add-to-list 'load-path "~/.emacs.d/plugins/auto-complete-1.3.1")
;; Load the default configuration
;;(require 'auto-complete-config)
;; Make sure we can find the dictionaries
;;(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/auto-complete-1.3.1/dict")
;; Use dictionaries by default
;;(setq-default ac-sources (add-to-list 'ac-sources 'ac-source-dictionary))
;;(global-auto-complete-mode t)
;; Start auto-completion after 2 characters of a word
;;(setq ac-auto-start 2)
;; case sensitivity is important when finding matches
;;(setq ac-ignore-case nil)

;; Let's have snippets in the auto-complete dropdown
;;(add-to-list 'ac-sources 'ac-source-yasnippet)

;; CoffeeScript mode
;;(add-to-list 'load-path "~/.emacs.d/plugins/coffee-mode")
;;(require 'coffee-mode)

;;(defun coffee-custom ()
;;  "coffee-mode-hook"
;; (set (make-local-variable 'tab-width) 2))

;;(add-hook 'coffee-mode-hook
;;  '(lambda() (coffee-custom)))

;; TextMate mode
;(add-to-list 'load-path "~/.emacs.d/plugins/textmate.el")
;(require 'textmate)
;(textmate-mode)

;; Rinari - Ruby on Rails Modes
;; Interactively Do Things (highly recommended, but not strictly required)
;;(require 'ido)
;;(ido-mode t)

;; Rinari
;;(add-to-list 'load-path "~/.emacs.d/plugins/rinari")
;;(require 'rinari)

;; Set tags to tags file for current project
;;(setq rinari-tags-file-name "TAGS")

;;; nxml (HTML ERB template support)
;;(load "~/.emacs.d/plugins/nxhtml/autostart.el")

;;(setq
;; nxhtml-global-minor-mode t
;; mumamo-chunk-coloring 'submode-colored
;; nxhtml-skip-welcome t
;; indent-region-mode t
;; rng-nxml-auto-validate-flag nil
;; nxml-degraded t)
;;(add-to-list 'auto-mode-alist '("\\.html\\.erb\\'" . eruby-nxhtml-mumamo))

;; Scss/Sass
;;(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/scss-mode.el"))
;;(autoload 'scss-mode "scss-mode")
;;(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
