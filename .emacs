(add-to-list 'load-path "~/emacs/site-lisp")
(add-to-list 'load-path "~/.site-lisp")
(add-to-list 'load-path "~/.site-lisp/nxhtml")
(add-to-list 'load-path "~/emacs/site-lisp/slime")
(add-to-list 'load-path "~/emacs/site-lisp/cedet/common/")
(add-to-list 'load-path "~/emacs/site-lisp/cedet/contrib/")

;; =================  Editing Behaviour =================

;; Set tabs to 4 spaces
(setq-default custom-buffer-indent 4)
(setq-default tab-width 4)
(setq-default c-basic-offset 4)

; Make Emacs use "newline-and-indent" when you hit the Enter key so
; that you don't need to keep using TAB to align yourself when coding.
(global-set-key "\C-m"        'newline-and-indent)

;; Set tab to insert spaces
(setq-default indent-tabs-mode nil)

;; Use X11 clipboard
(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)

;; Add new line at end of file
(setq require-final-newline t)

;; Set scroll to 
(setq scroll-preserve-screen-position 1)
(setq scroll-step 1)
(setq scroll-conservatively 1)

(show-paren-mode t)

;; ======================= Theme ========================

;; Load color-theme and it's module
;(require 'color-theme)
;(color-theme-initialize)
;(when window-system
;  (color-theme-subtle-hacker))
;; (custom-set-faces
;;  '(cursor ((t (:foreground "black"))))
;;  '(font-lock-warning-face ((t (:foreground "black" :weight bold))))
;;  '(slime-repl-inputed-output-face ((((class color) (background dark)) (:foreground "black" :weight bold))))
;;  '(widget-button-pressed ((((min-colors 88) (class color))  (:foreground "White")))))


;; ========== Enable Line and Column Numbering ==========

;; Show line numbers at side of buffer
(require 'linum)
(global-linum-mode 1)
(defun font-lock-fontify-numbers ()
  "Use this function as a hook to fontify numbers as constant"
  (font-lock-add-keywords nil
      '(("[^a-zA-Z_]\\(0x[0-9a-fA-F]+\\)" 1 font-lock-constant-face) ; hexa
        ("[^a-zA-Z_]\\(-?[0-9]+\\.[0-9]+\\)" 1 font-lock-constant-face) ; float
        ("[^a-zA-Z_1-9]\\(-?[0-9]+L?\\)" 1 font-lock-constant-face)))) ; int
(add-hook 'php-mode-hook 'font-lock-fontify-numbers)
(add-hook 'c-mode-hook 'font-lock-fontify-numbers)
(add-hook 'c++-mode-hook 'font-lock-fontify-numbers)
(add-hook 'perl-mode-hook 'font-lock-fontify-numbers)
(add-hook 'css-mode-hook 'font-lock-fontify-numbers)
(add-hook 'emacs-lisp-mode-hook 'font-lock-fontify-numbers)
(add-hook 'tuareg-mode-hook 'font-lock-fontify-numbers)
(add-hook 'js2-mode-hook 'font-lock-fontify-numbers)

(set-default-font "DejaVu Sans Mono-10") ; .Xdefaults
(global-font-lock-mode t)
(show-paren-mode t)
(transient-mark-mode t)
(set-face-background 'default "#333333") ; .Xdefaults
(set-face-foreground 'default "#cccccc") ; .Xdefaults
(set-face-background 'cursor "#ffaa00") ; .Xdefaults
(set-face-foreground 'cursor "#333333") ; .Xdefaults
(setq x-pointer-foreground-color "#aaaaaa") ; .Xdefaults
(set-face-background 'region "#33aaff")
(set-face-foreground 'region "#eeeeee")
(set-face-background 'show-paren-match-face "#666666")
(set-face-foreground 'show-paren-match-face "#ffffff")
(set-face-background 'show-paren-mismatch-face "#dd0000")
(set-face-foreground 'show-paren-mismatch-face "#333333")
(set-face-foreground 'font-lock-warning-face "#dd0000")
(set-face-foreground 'font-lock-preprocessor-face "#99cc33")
(set-face-foreground 'font-lock-constant-face "#dd00dd")
(set-face-foreground 'font-lock-comment-face "#888888")
(set-face-foreground 'font-lock-keyword-face "#dddd00")
(set-face-foreground 'font-lock-type-face "#ffaa00")
(set-face-foreground 'font-lock-function-name-face "#33aaff")
(set-face-foreground 'font-lock-string-face "#33aaff")
(set-face-foreground 'font-lock-variable-name-face "#00bb00")
;(global-hl-line-mode t)
;(set-face-background 'hl-line "#3a3a3a")
;(set-face-foreground 'hl-line "#eeeeee")
(set-face-foreground 'highlight "#333333")
(set-face-background 'highlight "#dddd00")
(set-face-foreground 'isearch "#333333")
(set-face-background 'isearch "#bbbb22")
(set-face-foreground 'isearch-lazy-highlight-face "#333333")
(set-face-background 'isearch-lazy-highlight-face "#bbbb66")
(set-face-background 'modeline "#aaaaaa")
(set-face-foreground 'modeline "#333333")
(set-face-foreground 'link "#4466ff")
(set-face-foreground 'link-visited "#aa33bb")
(set-face-foreground 'minibuffer-prompt "#bababa")
(set-face-foreground 'escape-glyph "#ccaa11")

;(when window-system
;(set-face-foreground 'modeline-buffer-id "RoyalBlue4")
;(set-face-background 'modeline "LightCyan1")
;(set-face-background 'modeline-inactive "DarkSlateGray2")
;(set-face-background 'fringe "LightCyan1")
;(set-face-background 'default "lightyellow1")
;(set-face-background 'region "lemonchiffon2")
;(set-face-background 'scroll-bar "lemonchiffon3")
;(set-face-background 'tool-bar "lemonchiffon3")
;(set-face-background 'header-line "lemonchiffon1")
;(set-face-background 'trailing-whitespace "lightyellow2"))

;; Show line-number in the mode line
(line-number-mode 1)

;; Show column-number in the mode line
(column-number-mode 1)

;; ===================== Keybindings ====================

(global-set-key [f1] 'man)
(global-set-key [f3] 'kill-this-buffer)

(global-set-key "\C-w" 'clipboard-kill-region)
(global-set-key "\M-w" 'clipboard-kill-ring-save)
(global-set-key "\C-y" 'clipboard-yank)


(put 'upcase-region 'disabled nil)

(setq inhibit-startup-message t)
(fset 'yes-or-no-p 'y-or-n-p)

(delete-selection-mode 1)
(setq blink-matching-paren 0)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
 
(defalias 'yes-or-no-p 'y-or-n-p)

;; (defun toggle-fullscreen ()
;;   (interactive)
;;   (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
;;     		 '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
;;   (x-send-client-message nil 0 nil "_NET_WM_STATE" 32
;; 	    		 '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0)))

;; (toggle-fullscreen)

(pc-selection-mode t)

(defun toggle-current-window-dedication ()
 (interactive)
 (let* ((window    (selected-window))
        (dedicated (window-dedicated-p window)))
   (set-window-dedicated-p window (not dedicated))
   (message "Window %sdedicated to %s"
            (if dedicated "no longer " "")
            (buffer-name))))

(global-set-key [pause] 'toggle-current-window-dedication)


(require 'highlight-80+)
(add-hook 'c-mode-hook 'highlight-80+-mode)
(add-hook 'c-mode-hook 'c-subword-mode)
(add-hook 'java-mode-hook 'c-subword-mode)
(add-hook 'c++-mode-hook 'highlight-80+-mode)
(add-hook 'java-mode-hook 'highlight-80+-mode)

;(set-default-font "Courier-10")

(defun whack-whitespace (arg)
  "Delete all white space from point to the next word.  With prefix ARG
    delete across newlines as well.  The only danger in this is that you
    don't have to actually be at the end of a word to make it work.  It
    skips over to the next whitespace and then whacks it all to the next
    word."
  (interactive "P")
  (let ((regexp (if arg "[ \t\n]+" "[ \t]+")))
    (re-search-forward regexp nil t)
    (replace-match "" nil nil)))

;(setq tab-always-indent t)
(global-set-key "\C-x \C-h" '(whack-whitespace nil))
(global-set-key [?\C-\t] 'increase-left-margin) 
(global-set-key [backtab] 'decrease-left-margin)  
(global-set-key "\C-a" 'mark-whole-buffer)
(setq auto-mode-alist (cons '("\\.psp$" . python-mode) auto-mode-alist))

(require 'slime)
(setq swank-clojure-jar-path "/usr/share/java/clojure.jar")
;;(setq swank-clojure-extra-classpaths (list "/path/to/other/jars"))
(require 'swank-clojure-autoload)
(require 'clojure-mode)

(setq c-offsets-alist '((arglist-intro . (c-basic-offset))))
(setq c-offsets-alist '((arglist-cont-nonempty . (c-basic-offset))))
(setq c-offsets-alist '((func-decl-cont . (+ (c-lineup-java-throws) c-basic-offset))))

;(eval-after-load "sql"
;  '(load-library "sql-indent"))

(add-hook 'latex-mode-hook 'longlines-mode)
(add-hook 'latex-mode-hook 'flyspell-mode)

(defun word-count nil "Count words in buffer" (interactive)
  (shell-command-on-region (point-min) (point-max) "wc -w"))

(setq-default fill-column 80)
(setq ispell-local-dictionary "british")
