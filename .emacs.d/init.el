(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode 1)
 '(font-lock-mode t t (font-lock))
 '(inhibit-startup-screen t)
 '(paren-mode (quote sexp) nil (paren))
 '(show-paren-mode t)
 '(show-paren-style (quote expression))
 '(truncate-lines t))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:stipple nil :background "black" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "outline" :family "Consolas"))))
 '(font-lock-builtin-face ((((class color) (min-colors 88) (background dark)) (:foreground "#ff9999"))))
 '(font-lock-comment-face ((nil (:foreground "#aaaaff"))))
 '(font-lock-function-name-face ((((class color) (background light)) (:foreground "green"))))
 '(font-lock-keyword-face ((nil (:background "black" :foreground "green"))))
 '(font-lock-preprocessor-face ((((class color) (background light)) (:foreground "#6666ff"))))
 '(font-lock-reference-face ((((class color) (background light)) (:foreground "#ff6666"))))
 '(font-lock-variable-name-face ((((class color) (background light)) (:foreground "#ff66ff"))))
 '(paren-match ((t (:foreground "black" :background "darkseagreen2"))) t)
 '(py-builtins-face ((t (:foreground "#5555ff"))) t)
 '(py-pseudo-keyword-face ((t (:foreground "#ff5555"))) t)
 '(show-paren-match ((((class color) (background dark)) (:background "#0000ff")))))
(global-set-key (kbd "C-#") 'comment-region)
(global-set-key (kbd "M-g") 'goto-line)
(put 'downcase-region 'disabled nil)

(put 'upcase-region 'disabled nil)
(setq-default sgml-basic-offset 4)
(setq-default indent-tabs-mode nil)
(setq-default column-number-mode 1)
(setq-default c-basic-offset 4)
(add-to-list 'load-path "/home/aj/.emacs.d/matlab-emacs")
(add-to-list 'load-path "/home/aj/.emacs.d")
(load-library "matlab-load")
(setq matlab-indent-function nil)
(require 'fill-column-indicator)
(add-hook 'c++-mode-hook 'fci-mode)
(add-hook 'python-mode-hook 'fci-mode)
(setq-default fill-column 80)
(setq auto-mode-alist (cons '("SConscript" . python-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("SConstruct" . python-mode) auto-mode-alist))
(defun my-c-mode-hook ()
  (c-toggle-syntactic-indentation 0)
  (linum-mode t))
(add-hook 'c-mode-common-hook 'my-c-mode-hook)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(autoload 'pymacs-load "pymacs" nil t)
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
