(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(c-default-style "bsd")
 '(custom-enabled-themes '(abyss))
 '(custom-safe-themes
   '("84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "994508ac1b9cfc317c80dcffb1efb69689e792eab8bc4c1dd0be7a57b77c4706" default "abyss"))
 '(doc-view-continuous t)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(cider-eval-sexp-fu smart-mode-line-powerline-theme smart-mode-line elpy python-mode marcopolo helm-tramp dockerfile-mode docker-compose-mode docker-cli docker-api docker quelpa ws-butler yasnippet-snippets yasnippet project-explorer function-args helm-gtags helm ## ecb clear-text mingus quelpa-use-package cider clojure-mode projectile better-defaults))
 '(speedbar-default-position 'left)
 '(speedbar-directory-unshown-regexp "^\\(CVS\\|RCS\\|SCCS\\|STAR\\|\\.\\.*$\\)\\'")
 '(speedbar-ignored-directory-expressions
   '("[/\\]logs?[/\\]\\'" "[/\\]Star.Wars?[/\\]'" "[/\\]Star Wars?[/\\]'"))
 '(speedbar-show-unknown-files nil)
 '(speedbar-supported-extension-expressions
   '(".[ch]\\(\\+\\+\\|pp\\|c\\|h\\|xx\\)?" ".tex\\(i\\(nfo\\)?\\)?" ".el" ".emacs" ".l" ".lsp" ".p" ".java" ".js" ".f\\(90\\|77\\|or\\)?" ".ad[abs]" ".p[lm]" ".tcl" ".m" ".scm" ".pm" ".py" ".g" ".s?html" ".ma?k" "[Mm]akefile\\(\\.in\\)?"))
 '(speedbar-track-mouse-flag t)
 '(speedbar-verbosity-level 5)
 '(sr-speedbar-right-side nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mode-line ((t (:background "#d9d15a" :foreground "#010101" :box nil)))))

(setq powerline-default-separator-dir '(left . right))
(setq sml/theme 'powerline)
(sml/setup)


(defun set-background-for-terminal (&optional frame)
  (or frame (setq frame (selected-frame)))
  "unsets the background color in terminal mode"
  (unless (display-graphic-p frame)
    (set-face-background 'default "unspecified-bg" frame)))
(add-hook 'after-make-frame-functions 'set-background-for-terminal)
(add-hook 'window-setup-hook 'set-background-for-terminal)


(defun er-sudo-edit (&optional arg)
  "Edit currently visited file as root.

With a prefix ARG prompt for a file to visit.
Will also prompt for a file to visit if current
buffer is not visiting a file."
  (interactive "P")
  (if (or arg (not buffer-file-name))
      (find-file (concat "/sudo:root@localhost:"
                         (ido-read-file-name "Find file(as root): ")))
    (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))


(global-set-key (kbd "C-x C-r") #'er-sudo-edit)


(add-to-list 'load-path "/home/jtarchalski/.emacs.d/plugins/")
(add-to-list 'load-path "/home/jtarchalski/.emacs.d/plugins/eaf/")
(let ((default-directory  "/home/jtarchalski/.emacs.d/plugins/"))
  (normal-top-level-add-to-load-path '("."))
  (normal-top-level-add-subdirs-to-load-path))
(concat user-emacs-directory
        (convert-standard-filename "plugins/"))


(add-to-list 'default-frame-alist '(font . "Mononoki-12"))
(set-face-attribute 'default t :font "Mononoki-12")
;(custom-safe-themes 'abyss t)
;(custom-enabled-themes 'abyss t)
(load-theme 'abyss)
;;(load-theme 'manoj-dark)

(electric-pair-mode 1)

(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))


(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
(defvar my-packages '(better-defaults
                      projectile
                      clojure-mode
                      cider
                      org-plus-contrib))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))


(require 'eaf)


;(load "~/.emacs.d/libmpdee.el")
;(load "~/.emacs.d/mingus.el")


(load "sr-speedbar.el")
(global-set-key (kbd "s-z") 'sr-speedbar-toggle)
(setq speedbar-directory-unshown-regexp "^\\(CVS\\|RCS\\|SCCS\\|\\.\\.*$\\)\\'")


;;(set-frame-parameter (selected-frame) 'alpha '(<active> . <inactive>))
;;(set-frame-parameter (selected-frame) 'alpha <both>)
(set-frame-parameter (selected-frame) 'alpha '(100 . 100))
(add-to-list 'default-frame-alist '(alpha . (100 . 100)))

(package-initialize)
(if (require 'quelpa nil t)
    (quelpa-self-upgrade)
  (with-temp-buffer
    (url-insert-file-contents "https://framagit.org/steckerhalter/quelpa/raw/master/bootstrap.el")
    (eval-buffer)))

;;(use-package matrix-client
;;  :quelpa ((matrix-client :fetcher github :repo "alphapapa/matrix-client.el"
;;                          :files (:defaults "logo.png" "matrix-client-standalone.el.sh"))))


(projectile-global-mode)


;; helm setup
(load "setup-helm.el")
(setq
 helm-gtags-ignore-case t
 helm-gtags-auto-update t
 helm-gtags-use-input-at-cursor t
 helm-gtags-pulse-at-cursor t
 helm-gtags-prefix-key "\C-cg"
 helm-gtags-suggested-key-mapping t
 )

(require 'helm-gtags)
;; Enable helm-gtags-mode
(add-hook 'dired-mode-hook 'helm-gtags-mode)
(add-hook 'eshell-mode-hook 'helm-gtags-mode)
(add-hook 'c-mode-hook 'helm-gtags-mode)
(add-hook 'c++-mode-hook 'helm-gtags-mode)
(add-hook 'asm-mode-hook 'helm-gtags-mode)

(define-key helm-gtags-mode-map (kbd "C-c g a") 'helm-gtags-tags-in-this-function)
(define-key helm-gtags-mode-map (kbd "C-j") 'helm-gtags-select)
(define-key helm-gtags-mode-map (kbd "M-.") 'helm-gtags-dwim)
(define-key helm-gtags-mode-map (kbd "M-,") 'helm-gtags-pop-stack)
(define-key helm-gtags-mode-map (kbd "C-c <") 'helm-gtags-previous-history)
(define-key helm-gtags-mode-map (kbd "C-c >") 'helm-gtags-next-history)


(require 'cc-mode)
(require 'semantic)
(require 'company-c-headers)

(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
(add-to-list 'company-backends 'company-c-headers)
(add-to-list 'company-c-headers-path-system "/usr/include/c++/8.2.1/")
(setq company-backends (delete 'company-semantic company-backends))
(define-key c-mode-map  [(tab)] 'company-complete)
(define-key c++-mode-map  [(tab)] 'company-complete)


(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)

(semantic-mode 1)


(global-set-key (kbd "RET") 'newline-and-indent)  ; automatically indent when press RET

;; activate whitespace-mode to view all whitespace characters
(global-set-key (kbd "C-c w") 'whitespace-mode)

;; show unncessary whitespace that can mess up your diff
(add-hook 'prog-mode-hook (lambda () (interactive) (setq show-trailing-whitespace 1)))

;; use space to indent by default
(setq-default indent-tabs-mode nil)

;; set appearance of a tab that is represented by 4 spaces
(setq-default c-default-style "bsd"
                  c-basic-offset 4
                  tab-width 4
                  indent-tabs-mode t)


(global-set-key (kbd "<f5>") (lambda ()
                               (interactive)
                               (setq-local compilation-read-command nil)
                               (call-interactively 'compile)))


(add-hook 'c-mode-common-hook   'hs-minor-mode)


;; Package: yasnippet
(require 'yasnippet)
(yas-global-mode 1)


;; Package: ws-butler
(require 'ws-butler)
(add-hook 'c-mode-common-hook 'ws-butler-mode)


(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-switchb)


;; Clojure thing
(defun spit-scad-last-expression ()
  (interactive)
  (cider-interactive-eval
   (format
	"(require 'scad-clj.scad)
	  (spit \"repl.scad\" (scad-clj.scad/write-scad %s))"
	(cider-last-sexp))))
(eval-after-load 'Clojure
  '(define-key cider-mode-map (kbd "C-c 3") 'spit-scad-last-expression))


;; arduino-mode
(require 'cl)
(autoload 'arduino-mode "arduino-mode" "Arduino editing mode." t)
(add-to-list 'auto-mode-alist '("\.ino$" . arduino-mode))



(message nil)


(message-or-box ".emacs loaded succesfully")
